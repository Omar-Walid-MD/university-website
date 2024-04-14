import React from 'react';
import { Button, Carousel, Col, Container, Row, Accordion } from 'react-bootstrap';
import { FaUser } from "react-icons/fa";

function Student({}) {
    return (
        <div className='page-container'>
            <section>
                <Container className='py-5 d-flex flex-column gap-3'>
                    <h3 className=''>معلومات الطالب</h3>
                    <div className='w-100 d-flex flex-column shadow rounded-4 p-3'>
                        <div className='d-flex gap-3'>
                            <FaUser className='bg-black text-white rounded-4 p-3' size={"10rem"} />
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
                        </div>
                        <div className="w-100 d-flex flex-column">

                            
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
                    </div>

                    <h3 className='mt-5'>التقييمات</h3>
                    <h4 className='w-100 text-center mb-5'>المعدل التراكمي: 3.99</h4>
                    <Accordion defaultActiveKey={["0"]}>
                    {
                        Array.from({length:5}).map((x,i)=>
                        <Accordion.Item className='mb-3 border border-1 border-dark rounded-3 shadow' eventKey={`${i}`}>
                            <Accordion.Header>
                                <h4 className='w-100 text-center'>الفرقة {5-i}</h4>
                            </Accordion.Header>
                            <Accordion.Body>
                                <h4>الفصل الدراسي الثاني</h4>
                                <hr />
                                <div className='mt-4 border border-2 rounded-3 overflow-hidden'>
                                    <Row className='bg-dark text-white p-2'>
                                        <Col className='col-1'>كود المادة</Col>
                                        <Col className='col-2'>إسم المادة</Col>
                                        <Col className='col-2'>درجات أعمال السنة</Col>
                                        <Col className='col-2'>درجات الميدتيرم</Col>
                                        <Col className='col-2'>درجات الفاينال</Col>
                                        <Col className='col-2'>إجمالي الدرجات</Col>
                                        <Col className='col-1'>العلامة النهائية</Col>

                                    </Row>
                                    {
                                        Array.from({length:5}).map((x,i)=>

                                        <Row className={`py-3 px-2 border-2 ${i<5-1 ? "border-bottom" : ""}`}>
                                            <Col className='col-1'>AAA-000</Col>
                                            <Col className='col-2'>إسم المادة</Col>
                                            <Col className='col-2'>00/40</Col>
                                            <Col className='col-2'>00/20</Col>
                                            <Col className='col-2'>00/60</Col>
                                            <Col className='col-2'>000/100</Col>
                                            <Col className='col-1'>A</Col>
                                        </Row>
                                        )
                                    }
                                </div>
                                <h5 className='mt-3 mb-5'>المعدل التراكمي الإجمالي: 3.99</h5>
                                <h4>الفصل الدراسي الأول</h4>
                                <hr />
                                <div className='mt-4 border border-2 rounded-3 overflow-hidden'>
                                    <Row className='bg-dark text-white p-2'>
                                        <Col className='col-1'>كود المادة</Col>
                                        <Col className='col-2'>إسم المادة</Col>
                                        <Col className='col-2'>درجات أعمال السنة</Col>
                                        <Col className='col-2'>درجات الميدتيرم</Col>
                                        <Col className='col-2'>درجات الفاينال</Col>
                                        <Col className='col-2'>إجمالي الدرجات</Col>
                                        <Col className='col-1'>العلامة النهائية</Col>

                                    </Row>
                                    {
                                        Array.from({length:5}).map((x,i)=>

                                        <Row className={`py-3 px-2 border-2 ${i<5-1 ? "border-bottom" : ""}`}>
                                            <Col className='col-1'>AAA-000</Col>
                                            <Col className='col-2'>إسم المادة</Col>
                                            <Col className='col-2'>00/40</Col>
                                            <Col className='col-2'>00/20</Col>
                                            <Col className='col-2'>00/60</Col>
                                            <Col className='col-2'>000/100</Col>
                                            <Col className='col-1'>A</Col>
                                        </Row>
                                        )
                                    }
                                </div>
                                <h5 className='mt-3 mb-5'>المعدل التراكمي الإجمالي: 3.99</h5>
                            </Accordion.Body>
                        </Accordion.Item>
                        )
                    }
                    </Accordion>
                </Container>
            </section>
        </div>
    );
}

export default Student;