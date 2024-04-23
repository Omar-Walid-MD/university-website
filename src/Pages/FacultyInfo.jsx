import React from 'react';
import { Button, Carousel, Col, Container, Row, Accordion } from 'react-bootstrap';
import { FaUsers } from "react-icons/fa";
import { FaChalkboardTeacher } from "react-icons/fa";
import { IoMdArrowDropleftCircle } from 'react-icons/io';
import { Link } from 'react-router-dom';

function FacultyInfo({}) {
    return (
        <div>
            <header className='home-header w-100 bg-dark text-white p-5 d-flex align-items-center justify-content-between'>
                <Container className='d-flex h-100'>
                    <div>
                        <h1 className='mb-4'>عنوان الكلية</h1>
                        <p className='fs-5'>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Repudiandae, ratione. Laudantium fugit aspernatur dignissimos porro maiores ex ratione, maxime praesentium nemo, reprehenderit magnam deleniti voluptatem, dolorum sapiente harum earum facilis.</p>
                    </div>
                </Container>
            </header>
            <section className='p-5'>
                <Container className='d-flex flex-column gap-5'>
                    <div className='text-center'>
                        <h2 className='mb-4 '>عن الكلية</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                    
                        <h2 className='mt-5 mb-4'>مهمة الكلية</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>

                        <h2 className='mt-5 mb-4'>رؤية الكلية</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                    </div>
                    <hr />
                    <Row className='w-100 d-flex justify-content-between'>
                        <Col className='col-4 d-flex flex-column align-items-center text-center'>
                            <FaChalkboardTeacher size={150} />
                            <h2>400 من أعضاء هيئة التدريس</h2>
                        </Col>
                        <Col className='col-4 d-flex flex-column align-items-center text-center'>
                            <FaUsers size={150} />
                            <h2>أكثر من 5000 طالب</h2>
                        </Col>
                        <Col className='col-4 d-flex flex-column align-items-center text-center'>
                            <FaChalkboardTeacher size={150} />
                            <h2>500+</h2>
                        </Col>
                    </Row>
                    <hr />
                    <div>
                        <h2 className='text-center mb-5'>الأقسام العلمية</h2>
                        <Row>
                        {
                            Array.from({length:8}).map((x,i)=>
                            <Col className='col-6'>
                                <div className='mb-3 border border-1 border-dark rounded-3 shadow text-center overflow-hidden' eventKey={`${i}`}>
                                    <div className='p-4'>
                                        <h4 className='w-100'>القسم {i}</h4>
                                        <p className='fs-5'>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                        eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                                        minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                        aliquip ex ea commodo consequat.
                                        </p>
                                    </div>
                                    <Button variant='transparent' as={Link} className='border-0 rounded-0 bg-white p-2 link w-100 text-start' to={"/department/default"}>
                                        اعرف المزيد
                                        <IoMdArrowDropleftCircle className='ms-2' size={25} />
                                    </Button>
                                </div>
                            </Col>
                            )
                        }
                        </Row>
                    </div>
                </Container>
            </section>
        </div>
    );
}

export default FacultyInfo;