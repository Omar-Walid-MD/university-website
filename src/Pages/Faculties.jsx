import React from 'react';
import {Container,Row,Col,Button,Form} from "react-bootstrap";
import { Link } from 'react-router-dom';

function Faculties({}) {

    const faculties = [
        {
            name: "الطب",
            img: "medicine"
        },
        {
            name: "الهندسة",
            img: "engineering"
        },
        {
            name: "الأعمال",
            img: "business"
        },
        {
            name: "الاداب",
            img: "humanities"
        },
        {
            name: "العلوم",
            img: "sciences"
        },
        {
            name: "طب الأسنان",
            img: "dentistry"
        }
    ]
    
    return (
        <div className='page-container'>
            <section className='bg-dark' style={{height:400}}>

            </section>
            <section>
                <Container className='p-5'>
                    <h3 className='w-100 text-center mb-5'>الكليات في الجامعة</h3>
                    <Form className='d-flex align-items-center gap-2 mb-3'>
                        <Form.Control type="text" placeholder="ابحث عن كلية" />
                        <Button>بحث</Button>
                    </Form>
                    <hr />
                    <Row className='g-3'>
                    {
                        Array.from({length:20}).map((x,i)=>

                            <Col className='col-12 col-md-6'>
                                <div className='w-100 text-center bg-dark text-white p-5 rounded-3 hover-scale shadow'>
                                    <h4>اسم الكلية</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates non corporis, excepturi saepe magnam voluptas qui quaerat.</p>
                                    <hr />
                                    <Link className='link' to={"/faculty/default"}>اقرا المزيد</Link>
                                </div>
                            </Col>
                        )
                    }
                    </Row>
                </Container>
            </section>
        </div>
    );
}

export default Faculties;