import React from 'react';
import { Button, Carousel, Col, Container, Row, Accordion } from 'react-bootstrap';
import { FaUsers } from "react-icons/fa";
import { FaChalkboardTeacher } from "react-icons/fa";
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
                    <div>
                        <h2 className='mb-4 text-center'>عن الكلية</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, aperiam incidunt quisquam esse repellat similique! Temporibus vero ea nobis aspernatur voluptatum iste earum, error autem molestias exercitationem nisi, at delectus? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore labore voluptas quod totam placeat autem voluptatibus saepe sunt quo odio ab enim beatae, magni, minima nesciunt, dolore aliquid debitis modi.</p>
                    
                        <h2 className='mt-5 mb-4 text-center'>مهمة الكلية</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, aperiam incidunt quisquam esse repellat similique! Temporibus vero ea nobis aspernatur voluptatum iste earum, error autem molestias exercitationem nisi, at delectus? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore labore voluptas quod totam placeat autem voluptatibus saepe sunt quo odio ab enim beatae, magni, minima nesciunt, dolore aliquid debitis modi.</p>

                        <h2 className='mt-5 mb-4 text-center'>رؤية الكلية</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, aperiam incidunt quisquam esse repellat similique! Temporibus vero ea nobis aspernatur voluptatum iste earum, error autem molestias exercitationem nisi, at delectus? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore labore voluptas quod totam placeat autem voluptatibus saepe sunt quo odio ab enim beatae, magni, minima nesciunt, dolore aliquid debitis modi.</p>
                    </div>
                    <hr />
                    <Row className='w-100 d-flex justify-content-between'>
                        <Col className='col-4 d-flex flex-column align-items-center text-center'>
                            <FaChalkboardTeacher size={200} />
                            <h2>400 من أعضاء هيئة التدريس</h2>
                        </Col>
                        <Col className='col-4 d-flex flex-column align-items-center text-center'>
                            <FaUsers size={200} />
                            <h2>أكثر من 5000 طالب</h2>
                        </Col>
                        <Col className='col-4 d-flex flex-column align-items-center text-center'>
                            <FaChalkboardTeacher size={200} />
                            <h2>500+</h2>
                        </Col>
                    </Row>
                    <hr />
                    <div>
                        <h2 className='text-center mb-5'>الأقسام العلمية</h2>
                        <Accordion defaultActiveKey={['0']}>
                        {
                            Array.from({length:8}).map((x,i)=>
                            <Accordion.Item className='mb-3 border border-1 border-dark rounded-3 shadow' eventKey={`${i}`}>
                                <Accordion.Header>
                                    <h4 className='w-100 text-center'>القسم {i}</h4>
                                </Accordion.Header>
                                <Accordion.Body className='border-top border-1 border-dark'>
                                    <p className='fs-5'>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                                    minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                    aliquip ex ea commodo consequat. Duis aute irure dolor in
                                    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                    culpa qui officia deserunt mollit anim id est laborum.
                                    </p>
                                    <Link to={"/department/default"} className='link'>اعرف المزيد...</Link>
                                </Accordion.Body>
                            </Accordion.Item>
                            )
                        }
                        </Accordion>
                    </div>
                </Container>
            </section>
        </div>
    );
}

export default FacultyInfo;