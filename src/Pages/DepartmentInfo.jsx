import React, { useEffect, useState } from 'react';
import { Button, Carousel, Col, Container, Row, Accordion } from 'react-bootstrap';
import { FaUsers } from "react-icons/fa";
import { FaChalkboardTeacher } from "react-icons/fa";
import { Link, useParams } from 'react-router-dom';
import { performQuery } from '../helpers';

function DepartmentInfo({}) {

    const {departmentID} = useParams();

    const [faculty,SetFaculty] = useState();
    const [department,setDepartment] = useState([]);
    const [courses,setCourses] = useState([]);

      
    useEffect(()=>{
        async function getDepartment(){setDepartment((await performQuery("departments",`WHERE Department_ID = "${departmentID}"`))[0]);}
        getDepartment();


        // async function getCourses()
        // {
        //     setCourses(await performQuery("department-courses"));
        // }
        // getCourses();
    },[]);

    useEffect(()=>{
        if(department)
        {
            async function getFaculty(){SetFaculty((await performQuery("faculties",`WHERE Faculty_ID = "${department.Faculty_ID}"`))[0]);}
            getFaculty();
        }
    },[department])
    
    console.log(faculty);
    console.log(department);

    return (
        <div>
            <header className='home-header w-100 bg-dark text-white p-5 d-flex align-items-center justify-content-between'>
                <Container className='d-flex h-100'> 
                    {
                        department && faculty &&
                        <div>
                            <h4 className='mb-3 text-white-50'>{faculty.Faculty_Name}</h4>
                            <h1 className='mb-4'>{department.Department_Name}</h1>
                            <p className='fs-5 mb-5'>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Repudiandae, ratione. Laudantium fugit aspernatur dignissimos porro maiores ex ratione, maxime praesentium nemo, reprehenderit magnam deleniti voluptatem, dolorum sapiente harum earum facilis.</p>
                            <Link className='link text-white-50' to={`/faculty/${faculty.Faculty_ID}`}>الرجوع الى الكليات</Link>
                        </div>
                    }
                </Container>
            </header>
            <section className='p-5'>
                <Container className='d-flex flex-column gap-5'>
                    <div>
                        <h2 className='mb-4 text-center'>عن القسم</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, aperiam incidunt quisquam esse repellat similique! Temporibus vero ea nobis aspernatur voluptatum iste earum, error autem molestias exercitationem nisi, at delectus? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore labore voluptas quod totam placeat autem voluptatibus saepe sunt quo odio ab enim beatae, magni, minima nesciunt, dolore aliquid debitis modi.</p>
                    
                        <h2 className='mt-5 mb-4 text-center'>مهمة القسم</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, aperiam incidunt quisquam esse repellat similique! Temporibus vero ea nobis aspernatur voluptatum iste earum, error autem molestias exercitationem nisi, at delectus? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore labore voluptas quod totam placeat autem voluptatibus saepe sunt quo odio ab enim beatae, magni, minima nesciunt, dolore aliquid debitis modi.</p>

                        <h2 className='mt-5 mb-4 text-center'>رؤية القسم</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates nesciunt quos nemo officia maiores optio rem libero nobis consectetur totam eveniet deleniti laborum reiciendis aliquid, atque molestiae doloribus ex porro. Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur officiis sit magnam facere pariatur eligendi excepturi qui obcaecati cumque deserunt vitae, nobis ab dignissimos quis maxime, hic rem? Inventore, consequuntur. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem vitae hic libero voluptates quam quas illo, tempora, doloremque consequuntur voluptatem maxime rerum, ad fuga perspiciatis sequi repellendus reprehenderit. Harum, facere?</p>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, aperiam incidunt quisquam esse repellat similique! Temporibus vero ea nobis aspernatur voluptatum iste earum, error autem molestias exercitationem nisi, at delectus? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore labore voluptas quod totam placeat autem voluptatibus saepe sunt quo odio ab enim beatae, magni, minima nesciunt, dolore aliquid debitis modi.</p>
                    </div>
                    <hr />
                    <div>
                        <h2 className='mb-5 text-center'>المقررات الدراسية</h2>
                        <Accordion defaultActiveKey={["0"]}>
                        {
                            Array.from({length:5}).map((x,i)=>
                            <Accordion.Item className='mb-3 border border-1 border-dark rounded-3 shadow' eventKey={`${i}`}>
                                <Accordion.Header>
                                    <h4 className='w-100 text-center'>الفرقة {i+1}</h4>
                                </Accordion.Header>
                                <Accordion.Body>
                                    <div className='w-100 d-flex gap-4'>
                                        <div className='w-100'>
                                            <h4>الفصل الدراسي الأول</h4>
                                            <hr />
                                            <div className='mt-4 mb-5 border border-2 rounded-3 overflow-hidden'>
                                                <Row className='bg-dark text-white p-2'>
                                                    <Col className='col-3'>كود المادة</Col>
                                                    <Col className='col-6'>إسم المادة</Col>
                                                    <Col className='col-3'>عدد ساعاتها</Col>
                                                </Row>
                                                {
                                                    Array.from({length:5}).map((x,i)=>

                                                    <Row className={`py-3 px-2 border-2 ${i<5-1 ? "border-bottom" : ""}`}>
                                                        <Col className='col-3'>AAA-000</Col>
                                                        <Col className='col-6'>إسم المادة هنا</Col>
                                                        <Col className='col-3'>4 ساعات</Col>
                                                    </Row>
                                                    )
                                                }
                                            </div>
                                        </div>
                                        <div className='w-100'>
                                            <h4>الفصل الدراسي الثاني</h4>
                                            <hr />
                                            <div className='mt-4 mb-5 border border-2 rounded-3 overflow-hidden'>
                                                <Row className='bg-dark text-white p-2'>
                                                    <Col className='col-3'>كود المادة</Col>
                                                    <Col className='col-6'>إسم المادة</Col>
                                                    <Col className='col-3'>عدد ساعاتها</Col>
                                                </Row>
                                                {
                                                    Array.from({length:5}).map((x,i)=>

                                                    <Row className={`py-3 px-2 border-2 ${i<5-1 ? "border-bottom" : ""}`}>
                                                        <Col className='col-3'>AAA-000</Col>
                                                        <Col className='col-6'>إسم المادة هنا</Col>
                                                        <Col className='col-3'>4 ساعات</Col>
                                                    </Row>
                                                    )
                                                }
                                            </div>
                                        </div>
                                    </div>
                                    
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

export default DepartmentInfo;