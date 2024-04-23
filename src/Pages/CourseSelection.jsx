import React from 'react';
import { Button, Col, Container, Form, Row } from 'react-bootstrap';

function CourseSelection({}) {
    return (
        <div className='page-container'>
            <Container className='py-5 d-flex flex-column gap-3'>
                <h3>اختيار المقررات</h3>
                <div className='shadow rounded-3 p-4'>
                    <div className='border border-2 border-black rounded-3 overflow-hidden'>
                        <Row className='bg-black text-white p-2'>
                            <Col className='col-3'>كود المادة</Col>
                            <Col className='col-6'>إسم المادة</Col>
                            <Col className='col-3'>عدد الساعات</Col>
                        </Row>
                    {
                        Array.from({length:10}).map((x,i)=>
                        
                        <Row className='p-2 border-bottom border-2 border-black'>
                            <Col className='col-3'>كود المادة</Col>
                            <Col className='col-6'>إسم المادة</Col>
                            <Col className='col-2'>عدد الساعات</Col>
                            <Col className='col-1'>
                                <Button>اختيار</Button>
                            </Col>
                        </Row>
                        )
                    }
                    </div>
                </div>
                <div className='shadow rounded-3 p-4'>
                    <div className="w-100 d-flex justify-content-between mb-3">
                        <h4>عدد الساعات المختارة: {0}/20</h4>
                    </div>
                    <div className='border border-2 border-black rounded-3 overflow-hidden'>
                        <Row className='bg-black text-white p-2'>
                            <Col className='col-3'>كود المادة</Col>
                            <Col className='col-6'>إسم المادة</Col>
                            <Col className='col-3'>عدد الساعات</Col>
                        </Row>
                    {
                        Array.from({length:5}).map((x,i)=>
                        
                        <Row className='p-2 border-bottom border-2 border-black'>
                            <Col className='col-3'>كود المادة</Col>
                            <Col className='col-6'>إسم المادة</Col>
                            <Col className='col-3'>عدد الساعات</Col>
                        </Row>
                        )
                    }
                    </div>

                </div>
                <Button>حفظ المقررات</Button>
            </Container>
        </div>
    );
}

export default CourseSelection;