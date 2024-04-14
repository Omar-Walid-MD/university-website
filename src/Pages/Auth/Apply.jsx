import React, { useState } from 'react';
import { Button, Carousel, FloatingLabel, Form } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import * as yup from "yup";
import { useForm } from 'react-hook-form';


function Apply({}) {

    const [formIndex,setFormIndex] = useState(1);


    return (
        <div className='page-container position-relative d-flex flex-column align-items-center justify-content-center h-100'>
            <div className='login-page-bg position-absolute'></div>
            <Form className='form-container p-5 bg-white mb-3 border border-1 border-black rounded-2 shadow d-flex flex-column overflow-hidden'>
                <Carousel activeIndex={formIndex} interval={null} indicators={false} controls={false} className='.home-news-carousel w-100 h-100'>
                    <Carousel.Item className='bg-white p-2'>
                        <h3 className='mb-3 border-bottom border-3 border-black pb-2'>المعلومات الشخصية</h3>
                        <div className="d-flex flex-column w-100 gap-3">

                            <FloatingLabel
                            controlId="floatingInput"
                            label="الإسم كاملا"
                            className="w-100"
                            >
                                <Form.Control placeholder="name@example.com" />
                            </FloatingLabel>

                            <div className='w-100 d-flex gap-5'>
                                <FloatingLabel className='w-50' controlId="floatingDateOfBirth" label="تاريخ الميلاد">
                                    <Form.Control type="date" placeholder="Date of Birth" />
                                </FloatingLabel>
                                <div>
                                    <p className='mb-2 text-black-50'>النوع:</p>
                                    <div className='d-flex gap-3'>
                                        <Form.Check
                                            type="radio"
                                            label="ذكر"
                                            name="gender-radio"
                                        />
                                        <Form.Check
                                            type="radio"
                                            label="أنثى"
                                            name="gender-radio"
                                        />
                                    </div>
                                </div>
                            </div>

                            <FloatingLabel
                            controlId="floatingInput"
                            label="الرقم القومي"
                            className="w-100"
                            >
                                <Form.Control placeholder="name@example.com" />
                            </FloatingLabel>

                            

                            <div className='w-100 d-flex gap-5'>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="رقم الهاتف"
                                className="w-100"
                                >
                                    <Form.Control placeholder="name@example.com" />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="رقم الهاتف الإحتياطي"
                                className="w-100"
                                >
                                    <Form.Control placeholder="name@example.com" />
                                </FloatingLabel>

                            </div>

                            <FloatingLabel
                            controlId="floatingInput"
                            label="البريد الألكتروني"
                            className="w-100"
                            >
                                <Form.Control placeholder="name@example.com" />
                            </FloatingLabel>

                        </div>
                    </Carousel.Item>
                    <Carousel.Item className='bg-white p-2'>
                        <h3 className='mb-3 border-bottom border-3 border-black pb-2'>المعلومات الأكاديمية</h3>
                        <div className="d-flex flex-column w-100 gap-3">

                            <FloatingLabel
                            controlId="floatingInput"
                            label="الإسم  المدرسة الثانوية كاملا"
                            className="w-100"
                            >
                                <Form.Control placeholder="name@example.com" />
                            </FloatingLabel>

                            <div className='w-100 d-flex gap-5'>
                                <FloatingLabel className='w-50' controlId="floatingDateOfBirth" label="تاريخ التخرج">
                                    <Form.Control type="date" placeholder="Date of Birth" />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="المعدل التراكمي"
                                className="w-50"
                                >
                                    <Form.Control type="number" placeholder="name@example.com" />
                                </FloatingLabel>
                                
                            </div>

                            <FloatingLabel
                            controlId="floatingInput"
                            label="إسم الدبلوما"
                            className="w-100"
                            >
                                <Form.Control placeholder="name@example.com" />
                            </FloatingLabel>

                            

                            

                        </div>
                    </Carousel.Item>
                </Carousel>
                <div className='w-100 px-2 mt-3'>
                    <Button className='w-100 fs-5' onClick={()=>setFormIndex(formIndex+1)}>
                        التالي
                    </Button>
                </div>
            </Form>
            <div>
                <Button variant='white' to={"/"} as={Link}>الرجوع الى الرئيسية</Button>
            </div>
        </div>
    );
}

export default Apply;