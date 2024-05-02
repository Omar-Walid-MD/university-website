import React, { useEffect, useState } from 'react';
import { Button, Carousel, Col, Container, Row, Accordion } from 'react-bootstrap';
import { FaUsers } from "react-icons/fa";
import { FaChalkboardTeacher } from "react-icons/fa";
import { IoMdArrowDropleftCircle } from 'react-icons/io';
import { Link, useLocation, useParams } from 'react-router-dom';
import { performQuery } from '../helpers';

function FacultyInfo({}) {

    const {facultyID} = useParams();
    const [faculty,SetFaculty] = useState();
    const [departments,setDepartments] = useState([]);
      
    useEffect(()=>{
        async function getFaculty(){SetFaculty((await performQuery("faculties",`WHERE Faculty_ID = "${facultyID}"`))[0]);}
        getFaculty();

        async function getDepartments(){setDepartments(await performQuery("departments",`WHERE Faculty_ID = "${facultyID}"`));}
        getDepartments();
    },[]);


    return (
        <div>
            <header className='home-header w-100 bg-dark text-white p-5 d-flex align-items-center justify-content-between'>
                <Container className='d-flex h-100'>
                {
                    faculty &&
                    <div>
                        <h1 className='mb-4'>{faculty.Faculty_Name}</h1>
                        <p className='fs-5'>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Repudiandae, ratione. Laudantium fugit aspernatur dignissimos porro maiores ex ratione, maxime praesentium nemo, reprehenderit magnam deleniti voluptatem, dolorum sapiente harum earum facilis.</p>
                    </div>
                }
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
                    <div>
                        <h2 className='text-center mb-5'>الأقسام العلمية</h2>
                        <Row className='g-3'>
                        {
                            departments.map((department,i)=>
                            <Col className='col-12 col-md-6'>
                                <div className='home-fac-bg w-100 text-center bg-dark text-white p-5 rounded-3 shadow overflow-hidden'
                                // style={{backgroundImage: `url(${require(`../assets/img/faculties/${fac.img}.jpg`)}`}}
                                >
                                    <h4>{department.Department_Name}</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates non corporis, excepturi saepe magnam voluptas qui quaerat.</p>
                                    <hr />
                                    <Link className='link' to={`/department/${department.Department_ID}`}>اقرا المزيد</Link>
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