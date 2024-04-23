import React from 'react';
import {Navbar, Nav, Container} from "react-bootstrap";
import { Link } from 'react-router-dom';
import { IoMdLogIn } from "react-icons/io";



function NavBar({}) {
    return (
    <Navbar expand="lg position-sticky top-0 z-3 shadow" className="bg-body-tertiary">
        <Container>
            <Navbar.Brand to={"/"} as={Link}>عنوان الجامعة</Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
                <Nav className="me-auto">
                    <Nav.Link to={"/"} as={Link}>الرئيسية</Nav.Link>
                    <Nav.Link to={"/faculties"} as={Link}>الكليات</Nav.Link>
                </Nav>
                <Nav.Link to={"/login"} as={Link} className='d-flex align-items-center gap-1'>
                    تسجيل دخول الطلاب
                    <IoMdLogIn size={25} className='mt-1'/>
                </Nav.Link>
            </Navbar.Collapse>
        </Container>
    </Navbar>
    );
}

export default NavBar;