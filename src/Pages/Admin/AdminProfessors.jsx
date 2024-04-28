import React, { useEffect, useState } from 'react';
import { Button, Carousel, Col, Container, Row, Accordion, Modal } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import { performQuery } from '../../helpers';

function AdminProfessors({}) {

    const [professors,setProfessors] = useState([]);

    useEffect(()=>{
        async function getProfessors(){setProfessors(await performQuery("professors"));}
        getProfessors();
    },[]);
    return (
        <div className='page-container'>
            <Container className="p-5 d-flex flex-column align-items-center gap-5">
                <h2 className='border-bottom border-black border-2 pb-2'>بيانات الأساتذة</h2>
                <div className="w-100">
                    <Link to="/dashboard">إلى لوحة البيانات</Link>
                </div>
                <div className='w-100 d-flex flex-column align-items-center border border-2 shadow rounded-3 p-4 gap-3'>
                    <div className='w-100 d-flex flex-column gap-3'>
                        <Row className='bg-dark text-white p-2'>
                            <Col className='col-2'>كود الأستاذ</Col>
                            <Col className='col-3'>إسم الأستاذ</Col>
                            <Col className='col-3'>الرقم القومي</Col>
                            <Col className='col-2'>رقم الهاتف</Col>

                        </Row>
                        {
                            professors.map((prof,i)=>

                            <Row className={`py-3 px-2 border-2 ${i<professors.length-1 ? "border-bottom" : ""}`}>
                                <Col className='col-2'>{prof.Prof_ID}</Col>
                                <Col className='col-3'>{prof.Prof_Name}</Col>
                                <Col className='col-3'>{prof.National_ID}</Col>
                                <Col className='col-2'>{prof.Mobile_No}</Col>
                                <Col className='col-2'>
                                    
                                </Col>

                            </Row>
                            )
                        }
                    </div>
                </div>
            </Container>
        </div>
    );
}

export default AdminProfessors;