import React from 'react';
import { Button, Carousel, Col, Container, Row } from 'react-bootstrap';
import { FaUsers } from "react-icons/fa";
import { Link } from 'react-router-dom';

function Home({}) {
    return (
        <div>
            <header className='home-header w-100 bg-dark text-white p-5 d-flex align-items-center justify-content-between'>
                <Container className='d-flex h-100 '>
                    <div className='bg-white rounded-4' style={{height:350,aspectRatio:1}}></div>
                    <div className='d-flex flex-column gap-4' style={{paddingInlineStart:100}}>
                        <h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta nihil tempore reprehenderit ea voluptate et minus debitis quo exercitationem distinctio! Reprehenderit consequuntur officia ipsam corporis fugiat quaerat, mollitia assumenda quod?</p>
                    </div>
                </Container>
            </header>

            <section className='pt-5'>
                {/* <h1 className='mb-5'>أخر الأخبار</h1> */}
                <Carousel interval={null} variant="dark" className='w-100 h-100' controls={false}>
                {
                    Array.from({length:5}).map((x,i)=>
                    
                    <Carousel.Item style={{marginBottom:100}}>
                        <div className='w-100 d-flex align-items-center justify-content-center'>
                            <Container className='d-flex gap-5 m-0'>
                                <Row>
                                    <Col>
                                        <div className='bg-dark rounded-4 mb-3' style={{height:450,width:"min(550px,90vw)"}}></div>
                                    </Col>
                                    <Col>
                                        <h1>Some text here {i}</h1>
                                        <p className='fs-5 w-100'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint delectus voluptatum ea recusandae soluta ipsam ut esse quo illum qui nulla aliquid, aut vitae! Ipsum delectus assumenda natus ipsa! Autem.</p>
                                    </Col>
                                </Row>
                            </Container>
                        </div>
                    </Carousel.Item>
                    )
                }
                    
                </Carousel>
            </section>

            <section className='home-section text-white d-flex flex-column align-items-center justify-content-center bg-dark' style={{height:650}}>
                <Container className='d-flex align-items-center flex-column text-center gap-5'>
                    <div>
                        <h1 className='mb-4'>من نحن و من أين بدانا؟</h1>
                        <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h4>
                    </div>
                    <Button variant="light" className='rounded-pill fs-4 fw-semibold px-4 py-2'>إقرأ المزيد</Button>
                </Container>
            </section>

            <section className='home-section'>
                <Container className='d-flex flex-column align-items-center p-5 gap-5'>
                    <h1>الكليات</h1>
                    <Row className='g-5'>
                    {
                        Array.from({length:6}).map(()=>
                        <Col className='col-12 col-lg-6'>
                            <div className='w-100 bg-dark rounded-4 d-flex flex-column shadow overflow-hidden' style={{height:200}}>
                                <div className='w-100 h-100 d-flex align-items-center justify-content-center'>
                                    <h3 className='text-white'>عنوان الكلية</h3>
                                </div>
                                <Button variant='transparent' as={Link} className='border-0 rounded-0 bg-white p-2 link w-100 text-start' to={"/col/default"}>اعرف المزيد ...</Button>
                            </div>
                        </Col>
                    )
                    }
                    </Row>
                    <Button variant='white' className='fs-4 shadow rounded-pill px-4'>الاطلاع على جميع الأقسام</Button>
                </Container>
            </section>

            <section className='home-section text-white d-flex flex-column align-items-center justify-content-center bg-dark' style={{height:650}}>
                <Container className='d-flex align-items-center flex-column text-center gap-5'>
                    <div>
                        <FaUsers size={200}/>
                        <h3>بعض الكلام هنا عن الالتحاق في الجامعة و معلومات اخرى</h3>
                    </div>
                    <Button variant="light" className='rounded-pill fs-4 fw-semibold px-4 py-2'>سجل التحاقك الان</Button>
                </Container>
            </section>

            <section className='home-section d-flex flex-column align-items-center p-5 gap-5'>
                <Container className='d-flex flex-column align-items-center p-5 gap-5'>
                    <h1>امتيازات الجودة لدينا</h1>
                    <Row className='g-5'>
                    {
                        Array.from({length:6}).map(()=>
                        <Col className='col-12 col-lg-4 d-flex flex-column gap-3 align-items-center justify-content-center'>
                            <div className='bg-info rounded-4 d-flex align-items-center justify-content-center shadow rounded-circle' style={{height:200,aspectRatio:1}}></div>
                            <h3>عنوان الجودة</h3>
                        </Col>
                    )
                    }
                    </Row>
                </Container>
            </section>

        </div>
    );
}

export default Home;