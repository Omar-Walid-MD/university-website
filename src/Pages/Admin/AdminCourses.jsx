import React, { useEffect, useState } from 'react';
import { Button, Carousel, Col, Container, Row, Accordion, Modal } from 'react-bootstrap';
import { FaArrowLeftLong } from "react-icons/fa6";
import { performQuery } from '../../helpers';
import { Link } from 'react-router-dom';

function AdminCourses({}) {

    const [faculties,setFaculties] = useState([]);
    const [departments,setDepartments] = useState([]);
    const [courses,setCourses] = useState([]);

    const [studentModal, setStudentModal] = useState(false);

    const handleClose = () => setStudentModal(false);
    const handleShow = () => setStudentModal(true);
  

    const [filters,setFilters] = useState({
        fac: "",
        dep: ""
    })

    function handleFilters(prop,value)
    {
        setFilters(x => ({...x,[prop]:value}));
    }

    useEffect(()=>{
        if(!filters.fac)
        {
            async function getFaculties(){setFaculties(await performQuery("faculties"));}
            getFaculties();

        }

        if(filters.fac && !filters.dep)
        {
            async function getDepartments(){setDepartments(await performQuery("departments",`WHERE Faculty_ID = "${filters.fac}"`));}
            getDepartments();
        }

        if(filters.fac && filters.dep)
        {
            async function getCourses(){setCourses(await performQuery("courses",
            `JOIN Department_Courses ON Courses.Course_ID = Department_Courses.Course_ID
            WHERE Department_ID = "${filters.dep}"`));}
            getCourses();
            console.log(courses);
        }

    },[filters]);

    return (
        <div className='page-container'>
            <Container className="p-5 d-flex flex-column align-items-center gap-5">
                <h2 className='border-bottom border-black border-2 pb-2'>بيانات الطلاب</h2>
                <div className="w-100">
                    <Link to="/dashboard">إلى لوحة البيانات</Link>
                </div>
                <div className='w-100 d-flex flex-column align-items-center border border-2 shadow rounded-3 p-4 gap-3'>
                    <div className='d-flex gap-2 align-self-start text-primary'>
                        {filters.fac && <Button variant='transparent' className='border-0 p-0' onClick={()=>{handleFilters("fac",null);handleFilters("dep",null);handleFilters("level",null);}}>{faculties.find((fac)=>fac.Faculty_ID===filters.fac).Faculty_Name} </Button>}
                        {filters.dep && <Button variant='transparent' className='border-0 p-0' onClick={()=>{handleFilters("dep",null);handleFilters("level",null);}}><FaArrowLeftLong /> {departments.find((dep)=>dep.Department_ID===filters.dep).Department_Name}</Button>}
                        {filters.level && <Button variant='transparent' className='border-0 p-0' onClick={()=>handleFilters("level",null)}><FaArrowLeftLong /> {filters.level}</Button>}

                    </div>
                {
                    !filters.fac ?
                    <>
                        <h3 className='mb-2'>اختيار الكلية</h3>
                        <div className='w-100 d-flex flex-column gap-3'>
                        {
                            faculties.map((fac,i)=>
                            <Button variant='transparent'
                            className='w-100 border border-3 rounded-3 p-3'
                            onClick={()=>handleFilters("fac",fac.Faculty_ID)}
                            >
                                <h4>{fac.Faculty_Name}</h4>
                            </Button>
                        )
                        }
                        </div>
                    </>
                    : !filters.dep ?
                    <>
                        <h3 className='mb-2'>اختيار القسم</h3>
                        <div className='w-100 d-flex flex-column gap-3'>
                        {
                            departments.map((dep,i)=>
                            <Button variant='transparent'
                            className='w-100 border border-3 rounded-3 p-3'
                            onClick={()=>handleFilters("dep",dep.Department_ID)}
                            >
                                <h4>{dep.Department_Name}</h4>
                            </Button>
                        )
                        }
                        </div>
                    </>
                    :
                    <>
                        <h3>الطلاب</h3>
                        <div className='w-100 d-flex flex-column gap-3'>
                            <Row className='bg-dark text-white p-2'>
                                <Col className='col-2'>كود الطالب</Col>
                                <Col className='col-3'>إسم الطالب</Col>
                                <Col className='col-3'>الرقم القومي</Col>
                                <Col className='col-2'>رقم الهاتف</Col>

                            </Row>
                            {
                                Array.from({length:5}).map((x,i)=>

                                <Row className={`py-3 px-2 border-2 ${i<5-1 ? "border-bottom" : ""}`}>
                                    <Col className='col-2'>كود الطالب</Col>
                                    <Col className='col-3'>إسم الطالب</Col>
                                    <Col className='col-3'>33333333333333</Col>
                                    <Col className='col-2'>012-345-7890</Col>
                                    <Col className='col-2'>
                                        <Button onClick={handleShow}>
                                            عرض المعلومات
                                        </Button>
                                    </Col>

                                </Row>
                                )
                            }
                        </div>
                    </>
                }
                    
                </div>

            </Container>

            <Modal show={studentModal} onHide={handleClose} className='info-modal'>
                <Modal.Header closeButton>
                <Modal.Title>بيانات الطالب</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <div className='w-100 d-flex flex-column border border-1 border-dark shadow rounded-4 p-3'>
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
                </Modal.Body>
            </Modal>
        </div>
    );
}

export default AdminCourses;