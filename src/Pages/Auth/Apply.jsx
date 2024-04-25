import React, { useState } from 'react';
import { Button, Carousel, FloatingLabel, Form } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import * as yup from "yup";
import { useForm } from 'react-hook-form';


function Apply({}) {

    const [formIndex,setFormIndex] = useState(0);
    const formHeaders = ["المعلومات الشخصية","معلومات ولي الأمر"];

    function nextFormIndex()
    {
        if(formIndex < formHeaders.length-1) setFormIndex(x => x+1)
    }

    function prevFormIndex()
    {
        if(formIndex > 0) setFormIndex(x => x-1)
    }


    return (
        <div className='page-container position-relative d-flex flex-column align-items-center justify-content-center h-100'>
            <div className='login-page-bg position-absolute'></div>
            <div className='form-container bg-white mb-3 border border-1 border-black rounded-2 shadow d-flex flex-column overflow-hidden'>
                <div className='bg-dark text-white p-3'>
                    <h2>طلب التحاق الطالب</h2>
                </div>
                <div className='d-flex gap-3 justify-content-between px-5 pt-3'>
                {
                    formHeaders.map((formHeader,i)=>
                    <h5 className={`apply-form-header ${formIndex===i ? "active" : ""} text-white p-2 rounded-3 text-center d-flex align-items-center justify-content-center`}>{formHeader}</h5>
                    )
                }
                </div>
                <Carousel activeIndex={formIndex} interval={null} indicators={false} controls={false} className='p-4 pb-0 w-100 h-100'>
                    <Carousel.Item className='bg-white'>
                        <Form className="d-flex flex-column w-100 gap-3">

                            <FloatingLabel
                            controlId="floatingInput"
                            label="الإسم كاملا"
                            className="w-100"
                            >
                                <Form.Control placeholder="" />
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

                            <div className='w-100 d-flex gap-5'>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="الرقم القومي"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="العنوان"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" />
                                </FloatingLabel>

                            </div>

                            

                            <div className='w-100 d-flex gap-5'>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="رقم الهاتف"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="رقم الهاتف الإحتياطي"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" />
                                </FloatingLabel>

                            </div>

                            <FloatingLabel
                            controlId="floatingInput"
                            label="البريد الإلكتروني"
                            className="w-100"
                            >
                                <Form.Control placeholder="" />
                            </FloatingLabel>

                        </Form>
                    </Carousel.Item>
                    
                    <Carousel.Item className='bg-white'>
                        <Form className="d-flex flex-column w-100 gap-3">

                            <FloatingLabel
                            controlId="floatingInput"
                            label="إسم ولي الأمر كاملا"
                            className="w-100"
                            >
                                <Form.Control placeholder="" />
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

                            <div className='w-100 d-flex gap-5'>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="الرقم القومي لولي الأمر"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="عنوان ولي الأمر"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" />
                                </FloatingLabel>

                            </div>

                            
                            <FloatingLabel
                            controlId="floatingInput"
                            label="رقم هاتف ولي الأمر"
                            className="w-100"
                            >
                                <Form.Control placeholder="" />
                            </FloatingLabel>

                               
                            <FloatingLabel
                            controlId="floatingInput"
                            label="البريد الإلكتروني لولي الأمر"
                            className="w-100"
                            >
                                <Form.Control placeholder="" />
                            </FloatingLabel>

                        </Form>
                    </Carousel.Item>

                </Carousel>
                <div className='w-100 p-4 pt-2 mt-3'>
                    {
                        formIndex>0 &&
                        <Button variant='transparent' className='mb-2 text-primary' onClick={prevFormIndex}>السابق</Button>
                    }
                    <Button className='w-100 fs-5' onClick={nextFormIndex}>
                    {
                        formIndex == formHeaders.length-1 ? "تسليم طلب الإلتحاق" : "التالي"
                    }
                    </Button>
                </div>
            </div>
            <div>
                <Button variant='white' to={"/"} as={Link}>الرجوع الى الرئيسية</Button>
            </div>
        </div>
    );
}

export default Apply;