import React from 'react';
import { Button, Carousel, Col, Container, Row } from 'react-bootstrap';
import { FaUsers } from "react-icons/fa";
import { IoMdArrowDropleftCircle } from "react-icons/io";
import { Link } from 'react-router-dom';

function Home({}) {

    const newsSample = [
        {
            title: "نتيجةُ امتحاناتِ نهايةِ الفصل الدراسي",
            desc: "جامعةُ [اسم الجامعة] تُعلنُ عن التفاصيل (جامعة [University name] تكشف عن نتائج امتحانات نهاية الفصل الدراسي مع تحليل مفصل للإحصائيات والأداء)"
        },
        {
            title: "انطلاقُ فعاليات أسبوعُ الريادةِ والإبداعِ في جامعة [اسم الجامعة]",
            desc: "استعدوا لأسبوع مليء بالمحادثات الملهمة وورش العمل وفرص التواصل! تنطلق جامعة [اسم الجامعة] في فعاليات أسبوع الريادة والابتكار الذي يوفر للطلاب منصة لتطوير أفكارهم والتواصل مع المحترفين في المجال."
        },
        {
            title: "جامعة [اسم الجامعة] تُعلنُ عن منح دراسية جديدة للطلاب الدوليين",
            desc: "بشارة للطلاب الدوليين! يسر جامعة [اسم الجامعة] الإعلان عن إطلاق منح دراسية جديدة للبكالوريوس والدراسات العليا. لا تفوت هذه الفرصة لتحقيق أهدافك الأكاديمية في مؤسسة تعليمية عالمية المستوى."
        },
        {
            title: "باحثونَ من جامعة [اسم الجامعة] يُحققونَ اختراقًا علميًا مهمًا في مجالِ [المجال العلمي]",
            desc: "خبار رائعة من جامعة [اسم الجامعة]! حقق فريق من الباحثين اختراقًا علميًا مهمًا في مجال [المجال العلمي]. يمتلك هذا الاكتشاف القدرة على [شرح موجز للتأثير المحتمل للاختراق]."
        },
        {
            title: "بدءُ التسجيلِ في مؤتمر [اسم المؤتمر] الذي تستضيفه جامعة [اسم الجامعة]",
            desc: "احجزوا تواريخكم! أصبح التسجيل مفتوحًا الآن لمؤتمر [اسم المؤتمر]، وهو حدث مهم في مجال [موضوع المؤتمر]. الذي تستضيفه جامعة [اسم الجامعة]، سيجمع المؤتمر كبار الخبراء لإجراء المناقشات والعروض التقديمية. لا تفوت هذه الفرصة للتعلم من الأفضل!"
        }
        
    ]

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

    const certificates = [
        {
            img: "iso_9001_2015.png"
        },
        {
            img: "iso_14001.png"
        },
        {
            img: "iso_21001.jpg"
        },
        {
            img: "iso_45001.png"
        }
    ]


    return (
        <div>
            <header className='home-header home-bg-1 w-100 text-white p-5 d-flex align-items-center justify-content-between'>
                <Container className='d-flex h-100 justify-content-between gap-5'>
                    <img src={require("../assets/img/logo.png")} style={{width:350}} className='h-100 rounded-4 shadow' />
                    <div className='d-flex flex-column gap-4'>
                        <h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</h2>
                        <p className='fs-5'>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta nihil tempore reprehenderit ea voluptate et minus debitis quo exercitationem distinctio! Reprehenderit consequuntur officia ipsam corporis fugiat quaerat, mollitia assumenda quod?</p>
                    </div>
                </Container>
            </header>

            <section className='pt-5'>
                <Container className='d-flex flex-column align-items-start'>
                    <h1 className='mb-5 border-bottom border-4 border-black pb-3'>أخر الأخبار</h1>
                    <Carousel interval={null} variant="dark" className='w-100 h-100 home-news-carousel' controls={false}>
                    {
                        newsSample.map((news,i)=>
                        
                        <Carousel.Item style={{marginBottom:100}}>
                            <div className='w-100 d-flex align-items-center justify-content-center m-0'>
                                <Row className='g-0'>
                                    <Col className='col-5'>
                                        <div className='image-border p-2 w-100'>
                                            <img src={require(`../assets/img/home-news/${i}.jpg`)} className='w-100 rounded-2 border shadow border-3 border-black' alt="" />
                                        </div>
                                    </Col>
                                    <Col className='px-5 py-2'>
                                        <div className='h-100 rounded-3 border border-2 border-black shadow p-3 d-flex flex-column justify-content-between'>
                                            <div>
                                                <h2 className='mb-4'>{news.title}</h2>
                                                <p className='fs-5 w-100'>{news.desc}</p>
                                            </div>
                                            <div className='d-flex justify-content-between'>
                                                <div className="d-flex gap-3">
                                                    <h5 className='mb-0'>من يومين</h5>
                                                    <h5 className='mb-0'>100 مشاهدات</h5>
                                                </div>
                                                <Button variant='transparent' as={Link} className='border-0 rounded-0 bg-white p-0 link text-start' to={"/faculty/default"}>
                                                    اعرف المزيد
                                                    <IoMdArrowDropleftCircle className='ms-2' size={25} />
                                                </Button>
                                            </div>
                                        </div>
                                    </Col>
                                </Row>
                            </div>
                        </Carousel.Item>
                        )
                    }
                        
                    </Carousel>
                </Container>
            </section>

            <section className='home-section home-bg-2 text-white d-flex flex-column align-items-center justify-content-center bg-dark' style={{height:650}}>
                <Container className='d-flex align-items-center flex-column text-center gap-5'>
                    <div className='d-flex flex-column align-items-center'>
                        <h1 className='mb-4 pb-3 border-bottom border-4 border-white'>من نحن و من أين بدانا؟</h1>
                        <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h4>
                    </div>
                    <Button variant="light" className='main-btn'>
                        إقرأ المزيد
                    </Button>
                </Container>
            </section>

            <section className='home-section'>
                <Container className='d-flex flex-column align-items-center p-5 gap-5'>
                    <h1 className='pb-3 border-bottom border-4 border-black'>الكليات</h1>
                    <Row className='g-5'>
                    {
                        faculties.map((fac)=>
                        <Col className='col-12 col-lg-6'>
                            <div className='w-100 border border-2 border-black rounded-2 d-flex flex-column shadow overflow-hidden'
                            style={{height:250}}
                            >
                                <div className='home-fac-bg w-100 h-100 d-flex align-items-center justify-content-center'
                                style={{backgroundImage: `url(${require(`../assets/img/faculties/${fac.img}.jpg`)}`}}
                                >
                                    <h3 className='text-white'>كلية {fac.name}</h3>
                                </div>
                                <Button variant='transparent' as={Link} className='border-0 rounded-0 bg-white p-2 link w-100 text-start' to={"/faculty/default"}>
                                    اعرف المزيد
                                    <IoMdArrowDropleftCircle className='ms-2' size={25} />
                                </Button>

                            </div>
                        </Col>
                    )
                    }
                    </Row>
                    <Button to={"/faculties"} as={Link} variant='white' className='main-btn'>الاطلاع على جميع الكليات</Button>
                </Container>
            </section>

            <section className='home-section text-white d-flex flex-column align-items-center justify-content-center bg-dark' style={{height:650}}>
                <Container className='d-flex align-items-center flex-column text-center gap-5'>
                    <div>
                        <FaUsers size={200}/>
                        <h3>بعض الكلام هنا عن الالتحاق في الجامعة و معلومات اخرى</h3>
                    </div>
                    <Button as={Link} to={"/apply"} variant="light" className='main-btn'>سجل التحاقك الان</Button>
                </Container>
            </section>

            <section className='home-section d-flex flex-column align-items-center p-5 gap-5'>
                <Container className='d-flex flex-column align-items-center p-5 gap-5'>
                    <h1 className='pb-3 border-bottom border-4 border-black'>امتيازات الجودة لدينا</h1>
                    <Row className='w-100 g-5 d-flex justify-content-center'>
                    {
                        certificates.map((cert,i)=>
                        <Col className='col-12 col-md-6 col-lg-4 d-flex flex-column gap-3 align-items-center justify-content-center text-center'>
                            <div className='d-flex align-items-center justify-content-between bg-white rounded-3 shadow p-3 border border-2 border-black overflow-hidden' style={{height:150,aspectRatio:1}}>
                                <img src={require(`../assets/img/home-certificates/${cert.img}`)}
                                className='h-100 w-100'
                                alt="" />
                            </div>
                            <h4>عنوان الجودة</h4>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis enim.</p>
                        </Col>
                        )
                    }
                    </Row>
                </Container>
            </section>

        </div>
    );
}

export default Home;