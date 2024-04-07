import React from 'react';
import {Form,Container,FloatingLabel,Button} from "react-bootstrap";
import { Link } from 'react-router-dom';

function Login({}) {
    return (
        <div className='page-container d-flex flex-column align-items-center justify-content-center h-100'>
            <Form className='form-container mb-3 border border-1 border-black rounded-3 shadow p-3 gap-4 d-flex flex-column align-items-center'>
                <h3>تسجيل دخول الطالب</h3>

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

                    <Button className='w-100'>تسجيل الدخول</Button>
                </div>
            </Form>
            <div>
                <Button variant='white' to={"/"} as={Link}>الرجوع الى الرئيسية</Button>
            </div>
        </div>
    );
}

export default Login;