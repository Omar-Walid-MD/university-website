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
            <header className='home-header home-fac-bg w-100 bg-dark text-white p-5 d-flex align-items-center justify-content-between'
            style={{backgroundImage: `url(${require(`../assets/img/faculties/${facultyID}.jpg`)}`}}
            >
                <Container className='d-flex h-100 text-shadow'>
                {
                    faculty &&
                    <div>
                        <h1 className='mb-4'>{faculty.Faculty_Name}</h1>
                        <p className='fs-5'>{faculty.Subtitle}</p>
                    </div>
                }
                </Container>
            </header>
            <section className='p-5'>
                <Container className='d-flex flex-column gap-5'>
                    {
                        faculty &&
                        <div className='text-center'>
                            <h2 className='mb-4 '>عن الكلية</h2>
                            <p className='fs-5'>{faculty.Description}</p>
                        </div>
                    }
                    <hr />
                    <div>
                        <h2 className='text-center mb-5'>الأقسام العلمية</h2>
                        <Row className='g-3'>
                        {
                            departments.map((department,i)=>
                            <Col className='col-12 col-md-6'>
                                <div className='home-fac-bg w-100 text-center bg-dark text-white p-5 rounded-3 shadow overflow-hidden text-shadow'
                                style={{backgroundImage: `url(${require(`../assets/img/departments/${department.Department_ID}.jpg`)}`}}
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