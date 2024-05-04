import React, { useEffect, useState } from 'react';
import {Container,Row,Col,Button,Form} from "react-bootstrap";
import { Link } from 'react-router-dom';
import { performQuery } from '../helpers';

function Faculties({}) {

    const [faculties,setFaculties] = useState([]);
      
    useEffect(()=>{
        async function getFaculties(){setFaculties(await performQuery("faculties"));}
        getFaculties();
    },[]);

    const [facSearch,setFacSearch] = useState("");

    return (
        <div className='page-container'>
            <section className='bg-dark' style={{height:400}}>

            </section>
            <section>
                <Container className='p-5'>
                    <h3 className='w-100 text-center mb-5'>الكليات في الجامعة</h3>
                    <Form className='d-flex align-items-center gap-4'>
                        <Form.Control type="text" placeholder="ابحث عن كلية" value={facSearch} onChange={(e)=>setFacSearch(e.target.value)} />
                        <Button className='main-btn primary'>بحث</Button>
                    </Form>
                    <hr />
                    <Row className='g-3'>
                    {
                        faculties.filter((fac) => fac.Faculty_Name.includes(facSearch)) .map((fac,i)=>

                            <Col className='col-12 col-md-6'>
                                <div className='home-fac-bg w-100 text-center text-shadow bg-dark text-white p-5 rounded-3 shadow overflow-hidden'
                                style={{backgroundImage: `url(${require(`../assets/img/faculties/${fac.Faculty_ID}.jpg`)}`}}
                                >
                                    <h4>{fac.Faculty_Name}</h4>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates non corporis, excepturi saepe magnam voluptas qui quaerat.</p>
                                    <hr />
                                    <Link className='link' to={`/faculty/${fac.Faculty_ID}`}>اقرا المزيد</Link>
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