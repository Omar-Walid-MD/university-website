import React from 'react';
import { Container, Row, Col } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import { GoTriangleLeft } from "react-icons/go";

function Footer({})
{
  return (
    <footer className='bg-accent text-white'>
      <Container className='p-3'>
        <Row>
          <Col className="col-md-6 d-flex flex-column align-items-start">
            <h3 className='border-bottom border-1 border-white pb-2 mb-3'>روابط سريعة</h3>
            <div className="d-flex flex-column gap-2">

              <Link className='link hover-scale'><GoTriangleLeft/>الصفحة الرئيسية</Link>
              <Link className='link hover-scale'><GoTriangleLeft/>عن الجامعة</Link>
              <Link className='link hover-scale'><GoTriangleLeft/>الدورات</Link>
              <Link className='link hover-scale'><GoTriangleLeft/>القبول والتسجيل</Link>
              <Link className='link hover-scale'><GoTriangleLeft/>اتصل بنا</Link>
            </div>
          </Col>
          <Col className="col-md-6">
            <h3>اتصل بنا</h3>
            <ul>
              <li>العنوان: شارع الجامعة، المدينة، الدولة</li>
              <li>الهاتف: +123456789</li>
              <li>البريد الإلكتروني: info@university.edu</li>
            </ul>
          </Col>
        </Row>
      </Container>
      <div className="bg-black text-center p-2">
        <p className='m-0'>جميع الحقوق محفوظة &copy; 2024 جامعة النموذج</p>
      </div>
    </footer>
  );
}

export default Footer;