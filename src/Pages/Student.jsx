import React, { useEffect, useState } from 'react';
import { Button, Carousel, Col, Container, Row, Accordion, Spinner } from 'react-bootstrap';
import { BsPersonVcard } from "react-icons/bs";
import { Link, useNavigate } from 'react-router-dom';
import { performQuery } from '../helpers';
import { useSelector } from 'react-redux';

function Student({}) {

    const navigate = useNavigate();
    const studentID = useSelector(store => store.auth.loginID);
    const loading = useSelector(store => store.auth.loading);
    const [studentInfo,setStudentInfo] = useState();

    useEffect(()=>{
        async function getSudentInfo()
        {
            const res = await performQuery("students",`WHERE Student_ID = "${studentID}"`);
            if(res.length)
            {
                console.log(res[0]);
                setStudentInfo(res[0]);
                const dep = (await performQuery("students",`
                    JOIN Departments ON Students.Department_ID = Departments.Department_ID
                    WHERE Students.Student_ID = "${studentID}"
                `))[0];
                console.log(dep.Department_ID);

                const facName = (await performQuery("departments",
                `JOIN Faculties ON Departments.Faculty_ID = Faculties.Faculty_ID
                WHERE Departments.Department_ID = '${dep.Department_ID}'
                `))[0].Faculty_Name;

                setStudentInfo(s =>({...s,depName:dep.Department_Name,facName}));


            }
            else navigate("/");

        }
        if(!loading) getSudentInfo();
    },[loading]);



    return (
        <div className='page-container'>
            <section>
            {
                loading || !studentInfo ?
                <Spinner size={200}/>
                : studentInfo &&
                <Container className='py-5'>
                    <div className='d-flex align-items-center gap-3 bg-accent text-white p-2 px-3 rounded-top'>
                        <BsPersonVcard size={45}/>
                        <h3 className=''>معلومات الطالب</h3>
                    </div>
                    <div className='w-100 d-flex flex-column border border-1 border-dark shadow rounded-bottom p-3'>
                            

                        <Row className='w-100 g-3'>
                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>إسم الطالب:</span>
                                <span className='fs-5'>{studentInfo.Name}</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>كود الطالب:</span>
                                <span className='fs-5'>{studentID}</span>
                            </Col>


                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>تاريخ الميلاد:</span>
                                <span className='fs-5'>{new Date(studentInfo.Date_Of_Birth).toLocaleDateString()}</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>الرقم القومي:</span>
                                <span className='fs-5'>{studentInfo.National_ID}</span>
                            </Col>

                        </Row>
                        <hr />
                        <Row className='w-100 g-3'>
                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>الإيميل الجامعي:</span>
                                <span className='fs-5'>{studentInfo.Email}</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>رقم الهاتف:</span>
                                <span className='fs-5'>{studentInfo.Mobile_No}</span>
                            </Col>


                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>رقم هاتف اخر:</span>
                                <span className='fs-5'>{studentInfo.Extra_Mobile_No}</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>عام الالتحاق:</span>
                                <span className='fs-5'>{studentInfo.Year_Of_Enrollment}</span>
                            </Col>

                        </Row>
                        <hr />
                        <Row className='w-100 g-3'>
                            <Col className="col-6 d-flex flex-column">
                                <span className='fs-6 text-black-50'>الكلية:</span>
                                <span className='fs-5'>{studentInfo.facName}</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>القسم العلمي:</span>
                                <span className='fs-5'>{studentInfo.depName}</span>
                            </Col>


                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>الفرقة الدراسية:</span>
                                <span className='fs-5'>{studentInfo.Level}</span>
                            </Col>

                            <Col className="col-6 d-flex flex-column">
                            <span className='fs-6 text-black-50'>المجموعة:</span>
                                <span className='fs-5'>{studentInfo.Section_ID}</span>
                            </Col>

                        </Row>

                    </div>
                </Container>
            }
            </section>
        </div>
    );
}

export default Student;