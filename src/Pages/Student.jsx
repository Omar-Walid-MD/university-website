import React from 'react';
import { Button, Carousel, Col, Container, Row, Accordion } from 'react-bootstrap';
import { FaUser } from "react-icons/fa";
import { Link } from 'react-router-dom';

function Student({}) {
    return (
        <div className='page-container'>
            <section>
                <Container className='py-5 d-flex flex-column gap-3'>
                    <h3 className=''>معلومات الطالب</h3>
                    <div className='w-100 d-flex flex-column shadow rounded-4 p-3'>
                            

                        <Row className='w-100 g-3'>
                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>إسم الطالب:</span>
                                <span className='fs-5'>إسم الطالب كاملا هنا</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>كود الطالب:</span>
                                <span className='fs-5'>12-3-4567</span>
                            </Col>


                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>تاريخ الميلاد:</span>
                                <span className='fs-5'>2000-01-01</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>الرقم القومي:</span>
                                <span className='fs-5'>3333333333333</span>
                            </Col>

                        </Row>
                        <hr />
                        <Row className='w-100 g-3'>
                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>الإيميل الجامعي:</span>
                                <span className='fs-5'>student-email@email.com</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>رقم الهاتف:</span>
                                <span className='fs-5'>+20102-123-1234</span>
                            </Col>


                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>رقم هاتف ولي الأمر:</span>
                                <span className='fs-5'>+20102-123-1234</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>تاريخ الالتحاق:</span>
                                <span className='fs-5'>2000-01-01</span>
                            </Col>

                        </Row>
                        <hr />
                        <Row className='w-100 g-3'>
                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>الكلية:</span>
                                <span className='fs-5'>إسم الكلية</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>القسم العلمي:</span>
                                <span className='fs-5'>إسم القسم العلمي</span>
                            </Col>


                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>الفرقة الدراسية:</span>
                                <span className='fs-5'>الأولى</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>السكشن:</span>
                                <span className='fs-5'>2</span>
                            </Col>

                        </Row>

                    </div>
                    <hr />
                    <Row>
                        <Col><Link to={"/student/evaluations"}>تقييمات الطالب</Link></Col>
                    </Row>
                </Container>
            </section>
        </div>
    );
}

export default Student;