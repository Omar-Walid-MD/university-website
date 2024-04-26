import React, { useState } from 'react';
import {Navbar, Nav, Container, Button} from "react-bootstrap";
import { Link } from 'react-router-dom';
import { IoMdLogIn } from "react-icons/io";
import { FaUser } from "react-icons/fa";
import { useDispatch, useSelector } from 'react-redux';
import { logOut } from '../Store/Slice/auth';



function NavBar({}) {

    const dispatch = useDispatch();

    const loginID = useSelector(store => store.auth.loginID);
    const loggedIn = useSelector(store => store.auth.loggedIn);



    return (
    <Navbar expand="lg position-sticky top-0 z-3 shadow" className="bg-body-tertiary">
        <Container>
            <Navbar.Brand to={"/"} as={Link}>عنوان الجامعة</Navbar.Brand>
            <Nav className="me-auto">
                <Nav.Link to={"/"} as={Link}>الرئيسية</Nav.Link>
                <Nav.Link to={"/faculties"} as={Link}>الكليات</Nav.Link>
            </Nav>
            <div>
            {
                loggedIn ?
                <div className='rounded-circle d-flex align-items-center justify-content-center border border-2 shadow p-2 w-auto navbar-dropdown-menu'>
                    <FaUser size={20} />
                    <div className="position-absolute navbar-dropdown-container">
                        <div className="bg-white shadow navbar-dropdown overflow-hidden">
                        {
                            loginID!=="admin" ?
                            <>
                                <Link to={"/student"} className='px-4 py-2 border-bottom d-flex justify-content-center text-decoration-none'>ملف الطالب</Link>
                                <Link to={"/student/evaluations"} className='px-4 py-2 border-bottom d-flex justify-content-center text-decoration-none'>التقديرات</Link>
                                <Link to={"/course-selection"} className='px-4 py-2 border-bottom d-flex justify-content-center text-decoration-none'>تسجيل المقررات</Link>
                            </>
                            :
                            <>
                                <Link to={"/dashboard"} className='px-4 py-2 border-bottom d-flex justify-content-center text-decoration-none'>بيانات الجامعة</Link>
                            </>
                        }
                            <div className='px-4 py-2 d-flex justify-content-center'>
                                <Button variant='danger' onClick={()=>{dispatch(logOut())}}>تسجيل الخروج</Button>
                            </div>
                        </div>
                    </div>
                </div>
                :
                <Nav.Link to={"/login"} as={Link} className='d-flex align-items-center gap-1'>
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