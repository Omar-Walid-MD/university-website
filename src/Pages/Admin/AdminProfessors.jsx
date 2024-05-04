import React, { useEffect, useState } from 'react';
import { Button, Carousel, Col, Container, Row, Accordion, Modal, Form } from 'react-bootstrap';
import { Link, useNavigate } from 'react-router-dom';
import { performQuery } from '../../helpers';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import * as yup from "yup";
import { useSelector } from 'react-redux';

const filterSchema = yup.object({

    Name: yup.string(),
    Email: yup.string(),
    National_ID: yup.string(),
    Mobile_No: yup.string(),
    Department_ID: yup.string()
});

function AdminProfessors({}) {

   
    const [professors,setProfessors] = useState([]);
    const [professorInfo,setProfessorInfo] = useState();
    const [professorCourses,setProfessorCourses] = useState([]);

    const [departments,setDepartments] = useState([]);

    const [filterModal,setFilterModal] = useState(false);
    const handleFilterClose = () => setFilterModal(false);
    const handleFilterShow = () => setFilterModal(true);

    const [profCoursesModal,setProfCoursesModal] = useState(false);
    const handleProfCoursesClose = () => setProfCoursesModal(false);
    const handleProfCoursesShow = () => setProfCoursesModal(true);

    const { register: registerProfFilters, handleSubmit: handleSubmitProfFilters, reset: resetProfFilters, formState: { errors: errorsProfFilters } } = useForm({ resolver: yupResolver(filterSchema) });

    async function onProfFilterSubmit(data)
    {
        if(data.Name || data.National_ID || data.Mobile_No || data.Email || data.Department_ID)
        {
            const query = "WHERE " + Object.keys(data).filter((key) => data[key]).map((key)=> `${key} LIKE "%${data[key]}%"`).join(" AND ");
            console.log(query);
            const p = await performQuery("professors",query)
            setProfessors(p);

        }
        else
        {
            getProfessors();
        }
        handleFilterClose();

    }

    async function getProfessors(){setProfessors(await performQuery("professors"));}

    useEffect(()=>{
        async function getDepartments(){setDepartments(await performQuery("departments"));}
        getDepartments();
    },[]);
    
    useEffect(()=>{
        getProfessors();
    },[]);

    useEffect(()=>{
        async function getProfCourses()
        {
            setProfessorCourses(await performQuery("professor-courses",`WHERE Prof_ID = "${professorInfo.Prof_ID}"`));
        }
        if(professorInfo) getProfCourses();
        else setProfessorCourses([]);

    },[professorInfo]);


    const navigate = useNavigate();

    const loggedIn = useSelector(store => store.auth.loggedIn);
    const loading = useSelector(store => store.auth.loading);


    useEffect(()=>{
        if (!loggedIn && !loading) navigate("/");
    },[loggedIn,loading]);

    return (
        <div className='page-container'>
            <Container className="p-5 d-flex flex-column align-items-center gap-5">
                <h2 className='border-bottom border-black border-2 pb-2'>بيانات الأساتذة</h2>
                <div className="w-100">
                    <Link to="/dashboard">إلى لوحة البيانات</Link>
                </div>
                <Button className='w-100 main-btn primary fs-4' onClick={handleFilterShow}>فلاتر البحث</Button>
                <div className='w-100 d-flex flex-column align-items-center border border-2 shadow rounded-3 p-4 gap-3'>
                    <div className='w-100'>
                        <Button variant='transparent' onClick={()=>{
                            getProfessors();
                        }}>محو الفلاتر</Button>
                    </div>
                    <div className='w-100 d-flex flex-column gap-3'>
                        <Row className='bg-dark text-white p-2'>
                            <Col className='col-1'>كود الأستاذ</Col>
                            <Col className='col-2'>إسم الأستاذ</Col>
                            <Col className='col-2'>الرقم القومي</Col>
                            <Col className='col-1'>تاريخ الميلاد</Col>
                            <Col className='col-2'>رقم الهاتف</Col>
                            <Col className='col-2'>البريد الاكتروني</Col>
                            <Col className='col-2'>العنوان</Col>
                            <Col className='col-1'>القسم</Col>
                        </Row>
                        {
                            professors.map((prof,i)=>
                            
                                <Row className={`py-3 px-2 border-2 ${i<professors.length-1 ? "border-bottom" : ""}`}>
                                    <Col className='col-1 border-end border-2 border-black'>{prof.Prof_ID}</Col>
                                    <Col className='col-2 border-end border-2 border-black'>{prof.Name}</Col>
                                    <Col className='col-2 border-end border-2 border-black'>{prof.National_ID}</Col>
                                    <Col className='col-1 border-end border-2 border-black'>{prof.Date_Of_Birth.split("T")[0]}</Col>
                                    <Col className='col-1 border-end border-2 border-black'>{prof.Mobile_No}</Col>
                                    <Col className='col-2 border-end border-2 border-black'>{prof.Email}</Col>
                                    <Col className='col-2 border-end border-2 border-black'>{prof.Address}</Col>
                                    <Col className='col-1 border-end border-2 border-black'>{prof.Department_ID}</Col>
                                    <Col className='col-3'>
                                        <Button className='main-btn primary mt-3'
                                        onClick={()=>{
                                            setProfessorInfo(prof);
                                            handleProfCoursesShow();
                                        }}
                                        >
                                            عرض المقررات
                                        </Button>
                                    </Col>
                                </Row>
                            )
                        }
                    </div>
                </div>
            </Container>

            <Modal show={filterModal} onHide={handleFilterClose} className='info-modal'>
                <Modal.Header closeButton>
                <Modal.Title>بحث عن أستاذ</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <Form onSubmit={handleSubmitProfFilters(onProfFilterSubmit)} className="d-flex flex-column gap-3">
                        <div>
                            <div className='labeled-input'>
                                <input className='p-2 rounded-1 w-100' placeholder='' type="text" {...registerProfFilters("Name")} />
                                <span>اسم الأستاذ</span>
                            </div>
                        </div>
                        <div>
                            <div className='labeled-input'>
                                <input className='p-2 rounded-1 w-100' placeholder='' type="number" {...registerProfFilters("National_ID")} />
                                <span>الرقم القومي</span>
                            </div>
                        </div>
                        <div>
                            <div className='labeled-input'>
                                <input className='p-2 rounded-1 w-100' placeholder='' type="text" {...registerProfFilters("Email")} />
                                <span>البريد الالكتروني</span>
                            </div>
                        </div>

                        <div>
                            <div className='labeled-input'>
                                <input className='p-2 rounded-1 w-100' placeholder='' type="text" {...registerProfFilters("Mobile_No")} />
                                <span>رقم الهاتف</span>
                            </div>
                        </div>

                        <div>
                        <Form.Select aria-label="Default select example" {...registerProfFilters("Department_ID")}>
                            <option value={""}>اختر قسما</option>
                            {
                                departments.map((dep) => 
                                    <option value={dep.Department_ID}>{dep.Department_Name}</option>
                                
                                )
                            }
                        </Form.Select>
                        </div>
                        
                        <Button type='submit' className='main-btn primary'>بحث عن طالب</Button>
                    </Form>
                </Modal.Body>

            </Modal>

            <Modal show={profCoursesModal} onHide={handleProfCoursesClose} className='info-modal'>
                <Modal.Header closeButton>
                <Modal.Title>مقررات الأستاذ</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <div className="d-flex flex-column gap-5">
                    {
                        Array.from({length:4}).map((x,index)=>
                        <div>
                            <h3 className='border-bottom border-2 border-black mb-2 pb-2'>عام {2023-index}</h3>
                            <div className='d-flex gap-5'>
                            {
                                Array.from({length:2}).map((x,semester)=>
                                <div className='w-50'>
                                    <Row>
                                        <Col>كود المقرر</Col>
                                        <Col>كود القسم</Col>
                                        <Col>المستوى</Col>
                                        <Col>المجموعة</Col>
                                    </Row>
                                    {
                                        professorCourses.filter((c) => c.Year === 2023-index && c.Semester === semester+1 ) .map((course)=>
                                        <Row>
                                            <Col>{course.Course_ID}</Col>
                                            <Col>{course.Department_ID}</Col>
                                            <Col>{course.Level}</Col>
                                            <Col>{course.Section_Number}</Col>
                                        </Row>
                                        )
                                    }
                               </div>
                                
                                
                                )
                            }
                            
                            </div>
                        </div>
                        )
                    }
                    </div>
                </Modal.Body>
            </Modal>


            
        </div>
    );
}

export default AdminProfessors;