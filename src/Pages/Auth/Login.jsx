import React from 'react';
import {Form,Container,FloatingLabel,Button} from "react-bootstrap";
import { Link } from 'react-router-dom';

function Login({}) {
    return (
        <div className='page-container position-relative d-flex flex-column align-items-center justify-content-center h-100'>
            <div className='login-page-bg position-absolute'></div>
            <Form className='form-container bg-white mb-3 border border-1 border-black rounded-2 shadow d-flex overflow-hidden'>
                <div className='login-form-bg w-50'></div>
                <div className='gap-4 d-flex flex-column align-items-center p-4 w-50'>
                    <img src={require("../../assets/img/logo.png")} style={{width:150}} className='rounded-4 shadow border border-2 border-black' />
                    
                    <h3>تسجيل دخول</h3>
                    <div className='d-flex gap-3'>
                        <Form.Check
                            type="radio"
                            label="طالب"
                            name="login-radio"
                        />
                        <Form.Check
                            type="radio"
                            label="مدير"
                            name="login-radio"
                        />
                    </div>
                    <div className='w-100 d-flex flex-column align-items-center gap-3'>
                        <FloatingLabel
                            controlId="floatingInput"
                            label="البريد الإلكتروني"
                            className="w-100"
                        >
                            <Form.Control type="email" placeholder="name@example.com" />
                        </FloatingLabel>
                        <FloatingLabel
                            controlId="floatingPassword"
                            label="كلمة المرور"
                            className="w-100"
                        >
                            <Form.Control type="password" placeholder="Password" />
                        </FloatingLabel>
                        <div className='w-100'>
                            <Link>نسيت كلمة المرور؟</Link>
                        </div>
                        <Button className='main-btn text-dark fs-5 w-100'>تسجيل الدخول</Button>
                    </div>
                </div>
            </Form>
            <div>
                <Button variant='white' to={"/"} as={Link}>الرجوع الى الرئيسية</Button>
            </div>
        </div>
    );
}

export default Login;