import React, { useEffect, useState } from 'react';
import {Navbar, Nav, Container, Button} from "react-bootstrap";
import { Link } from 'react-router-dom';
import { IoMdLogIn } from "react-icons/io";
import { FaUser } from "react-icons/fa";
import { useDispatch, useSelector } from 'react-redux';
import { logOut } from '../Store/Slice/auth';
import { performQuery } from '../helpers';



function NavBar({}) {

    const dispatch = useDispatch();

    const loginID = useSelector(store => store.auth.loginID);
    const loggedIn = useSelector(store => store.auth.loggedIn);

    const [loginName,setLoginName] = useState("");

    useEffect(()=>{
        if(loginID==="admin")
        {
            setLoginName("مدير");
        }
        else if(loginID)
        {
            async function getStudentName()
            {
                const res = await performQuery("students",`WHERE Student_ID = "${loginID}"`);
                if(res[0]) setLoginName(res[0].Name);
            }
            getStudentName();
        }
    },[loginID])


    return (
    <Navbar expand="lg position-sticky top-0 z-3 shadow py-0 border-bottom border-black border-2" className="bg-body-tertiary">
        <Container className='align-items-stretch'>
            <Navbar.Brand to={"/"} as={Link}>
                <img src={require("../assets/img/nav-logo.png")} style={{height:50}} alt="" />
            </Navbar.Brand>
            <Nav className="me-auto d-flex align-items-center">
                <Nav.Link to={"/"} as={Link}>الرئيسية</Nav.Link>
                <Nav.Link to={"/faculties"} as={Link}>الكليات</Nav.Link>
                <Nav.Link to={"/apply"} as={Link}>التحاق</Nav.Link>

            </Nav>
            <div className='d-flex align-items-center justify-content-center gap-2'>
            {
                loggedIn ?
                <>
                    <span className='fw-bold text-dark'>
                        مرحبا, <span className='text-accent fs-5'>
                                {loginName} 
                            </span>
                    </span>
                    <div className='h-100 d-flex align-items-center justify-content-center navbar-dropdown-menu'>
                        <div className='bg-accent rounded-circle d-flex align-items-center justify-content-center border border-2 shadow p-2 w-auto '>
                            <FaUser size={20} color='white' />
                        </div>
                        <div className="position-absolute navbar-dropdown-container">
                            <div className="bg-white shadow navbar-dropdown overflow-hidden rounded-bottom border-top-0 border border-black border-2 shadow">
                            {
                                loginID!=="admin" ?
                                <>
                                    <Link to={"/student"} className='px-4 py-2 border-bottom d-flex justify-content-center text-decoration-none'>ملف الطالب</Link>
                                    <Link to={"/course-selection"} className='px-4 py-2 border-bottom d-flex justify-content-center text-decoration-none'>تسجيل المقررات</Link>
                                </>
                                :
                                <>
                                    <Link to={"/dashboard"} className='px-4 py-2 border-bottom d-flex justify-content-center text-decoration-none'>بيانات الجامعة</Link>
                                </>
                            }
                                <div className='px-4 py-2 d-flex justify-content-center'>
                                    <Button className='main-btn danger' onClick={()=>{dispatch(logOut())}}>تسجيل الخروج</Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </>
                :
                <Nav.Link to={"/login"} as={Link} className='bg-accent text-white h-100 d-flex align-items-center gap-1 px-4'>
                    تسجيل الدخول
                    <IoMdLogIn size={25} className='mt-1'/>
                </Nav.Link>
                
            }
            </div>
        </Container>
    </Navbar>
    );
}

export default NavBar;