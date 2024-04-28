import React, { useEffect, useState } from 'react';
import { Button, Carousel, FloatingLabel, Form } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import * as yup from "yup";
import { useForm } from 'react-hook-form';
import { makeUniqueId, performQuery } from '../../helpers';
import axios from 'axios';

const schemas = [
  yup.object({

    Name: yup.string().required("رجاءا أدخل إسم الطالب"),
    date_of_birth: yup.date().typeError("رجاءا أدخل تاريخ صحيح").required("رجاءا أدخل تاريخ ميلاد الطالب"),
    national_ID: yup.number().required("رجاءا أدخل الرقم القومي للطالب"),
    Mobile_No: yup.string().required("رجاءا أدخل رقم هاتف للطالب"),
    Extra_Mobile_No: yup.string(),
    Address: yup.string().required("رجاءا أدخل عنوان الطالب"),
    Gender: yup.string().required(""),
    Email: yup.string().email("البريد الإلكتروني غير صالح").required("رجاءا أدخل البريد الإلكتروني للطالب"),
    password: yup.string().required("رجاءا أدخل كلمة السر"),
    confirmPassword: yup.string().required("رجاءا أدخل تأكيد كلمة السر"),
  
}).required(),
  yup.object({


    Name: yup.string().required("رجاءا أدخل إسم ولي الأمر"),
    date_of_birth: yup.date().typeError("رجاءا أدخل تاريخ صحيح").required("رجاءا أدخل تاريخ ميلاد ولي الأمر"),
    national_ID: yup.number().required("رجاءا أدخل الرقم القومي لولي الأمر"),
    Mobile_No: yup.string().required("رجاءا أدخل رقم هاتف لولي الأمر"),
    Address: yup.string().required("رجاءا أدخل عنوان ولي الأمر"),
    Gender: yup.string().required(""),
    Email: yup.string().email("البريد الإلكتروني غير صالح").required("رجاءا أدخل البريد الإلكتروني لولي الأمر"),

    
  }).required(),
  yup.object({

    Faculty_ID: yup.string().required("رجاءا اختر الكلية"),
    Department_ID: yup.string().required("رجاءا اختر القسم العلمي"),
    Level: yup.number().required("رجاءا اختر المستوى")

  }).required(),
  

]

function Apply({}) {

    const [formIndex,setFormIndex] = useState(0);
    const formHeaders = ["المعلومات الشخصية","معلومات ولي الأمر","المجال العلمي"];

    const [faculties,setFaculties] = useState([]);
    const [departments,setDepartments] = useState([]);

    const [applyInfo,setApplyInfo] = useState({});

    function nextFormIndex()
    {
        if(formIndex < formHeaders.length-1) setFormIndex(x => x+1);
        else submitApply();
    }

    function prevFormIndex()
    {
        if(formIndex > 0) setFormIndex(x => x-1)
    }

    function handleApplyInfo(e)
    {
        setApplyInfo(a => ({
            ...a,
            [formIndex]: {
                ...a[formIndex],
                [e.target.name]: e.target.value
            }
        }))
        console.log(applyInfo);
    }

    async function submitApply(data)
    {
        let updatedApplyInfo = {...applyInfo,...data}
        setApplyInfo(updatedApplyInfo);

        if(formIndex === schemas.length)
        {

            const parent_ID_List = (await performQuery("parents")).map((p)=>p.Parent_ID);
            const new_parent_ID = makeUniqueId(parent_ID_List)
            await axios.post("http://localhost:8000/parents",
            {...updatedApplyInfo[1],Parent_ID:new_parent_ID}
            );
    
            const student_ID_List = (await performQuery("students")).map((s)=>s.Student_ID);
            const new_student_ID = makeUniqueId(student_ID_List)
            await axios.post("http://localhost:8000/students",
            {...updatedApplyInfo[1],Student_ID:new_student_ID,Parent_ID:new_parent_ID,Department_ID:applyInfo[2].Department_ID}
            );
        }


    }

    useEffect(()=>{
        async function getFaculties(){setFaculties(await performQuery("faculties"));}
        getFaculties();
    },[]);

    useEffect(()=>{
        async function getDepartments(){setDepartments(await performQuery("departments",`WHERE Faculty_ID = "${applyInfo[2].Faculty_ID}"`));}
        getDepartments();
    },[applyInfo[2].Faculty_ID]);


    return (
        <div className='page-container position-relative d-flex flex-column align-items-center justify-content-center h-100'>
            <div className='login-page-bg position-absolute'></div>
            <div className='form-container bg-white mb-3 border border-1 border-black rounded-2 shadow d-flex flex-column overflow-hidden'>
                <div className='bg-dark text-white p-3'>
                    <h2>طلب التحاق الطالب</h2>
                </div>
                <div className='d-flex gap-3 justify-content-between px-5 pt-3'>
                {
                    formHeaders.map((formHeader,i)=>
                    <h5 className={`apply-form-header ${formIndex===i ? "active" : ""} text-white p-2 rounded-3 text-center d-flex align-items-center justify-content-center`}>{formHeader}</h5>
                    )
                }
                </div>
                <Carousel activeIndex={formIndex} interval={null} indicators={false} controls={false} className='p-4 pb-0 w-100 h-100'>
                    <Carousel.Item className='bg-white'>
                        <Form className="d-flex flex-column w-100 gap-3">

                            <FloatingLabel
                            controlId="floatingInput"
                            label="الإسم كاملا"
                            className="w-100"
                            
                            >
                                <Form.Control placeholder="" name="Name" onChange={handleApplyInfo} />
                            </FloatingLabel>

                            <div className='w-100 d-flex gap-5'>
                                <FloatingLabel className='w-50' controlId="floatingDateOfBirth" label="تاريخ الميلاد">
                                    <Form.Control type="date" placeholder="Date of Birth" name="date_of_birth" onChange={handleApplyInfo}  />
                                </FloatingLabel>
                                <div>
                                    <p className='mb-2 text-black-50'>النوع:</p>
                                    <div className='d-flex gap-3'>
                                        <Form.Check
                                            type="radio"
                                            label="ذكر"
                                            name="gender-radio"
                                            value="m"
                                            onClick={()=>setApplyInfo(a => ({
                                                ...a,
                                                [0]: {
                                                    ...a[0],
                                                    Gender: "m"
                                                }
                                            }))}
                                        />
                                        <Form.Check
                                            type="radio"
                                            label="أنثى"
                                            name="gender-radio"
                                            value="f"
                                            onClick={()=>setApplyInfo(a => ({
                                                ...a,
                                                [0]: {
                                                    ...a[0],
                                                    Gender: "f"
                                                }
                                            }))}

                                        />
                                    </div>
                                </div>
                            </div>

                            <div className='w-100 d-flex gap-5'>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="الرقم القومي"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" name="national_ID" onChange={handleApplyInfo} />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="العنوان"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" name="Address" onChange={handleApplyInfo}  />
                                </FloatingLabel>

                            </div>

                            <div className='w-100 d-flex gap-5'>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="رقم الهاتف"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" name="Mobile_No" onChange={handleApplyInfo} />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="رقم الهاتف الإحتياطي"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" name="Extra_Mobile_No" onChange={handleApplyInfo}  />
                                </FloatingLabel>

                            </div>

                            <FloatingLabel
                            controlId="floatingInput"
                            label="البريد الإلكتروني"
                            className="w-100"
                            >
                                <Form.Control placeholder="" name="Email" onChange={handleApplyInfo} />
                            </FloatingLabel>

                        </Form>
                    </Carousel.Item>
                    
                    <Carousel.Item className='bg-white'>
                        <Form className="d-flex flex-column w-100 gap-3">

                            <FloatingLabel
                            controlId="floatingInput"
                            label="إسم ولي الأمر كاملا"
                            className="w-100"
                            >
                                <Form.Control placeholder="" name="Name" onChange={handleApplyInfo} />
                            </FloatingLabel>

                            <div className='w-100 d-flex gap-5'>
                                <FloatingLabel className='w-50' controlId="floatingDateOfBirth" label="تاريخ الميلاد">
                                    <Form.Control type="date" placeholder="Date of Birth" name="Date_Of_Birth" onChange={handleApplyInfo} />
                                </FloatingLabel>
                                <div>
                                    <p className='mb-2 text-black-50'>النوع:</p>
                                    <div className='d-flex gap-3'>
                                        <Form.Check
                                            type="radio"
                                            label="ذكر"
                                            name="gender-radio"
                                            value="m"
                                            onClick={()=>setApplyInfo(a => ({
                                                ...a,
                                                [1]: {
                                                    ...a[1],
                                                    Gender: "m"
                                                }
                                            }))}

                                        />
                                        <Form.Check
                                            type="radio"
                                            label="أنثى"
                                            name="gender-radio"
                                            value="f"
                                            onClick={()=>setApplyInfo(a => ({
                                                ...a,
                                                [1]: {
                                                    ...a[1],
                                                    Gender: "f"
                                                }
                                            }))}

                                        />
                                    </div>
                                </div>
                            </div>

                            <div className='w-100 d-flex gap-5'>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="الرقم القومي لولي الأمر"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" name="National_ID" onChange={handleApplyInfo} />
                                </FloatingLabel>

                                <FloatingLabel
                                controlId="floatingInput"
                                label="عنوان ولي الأمر"
                                className="w-100"
                                >
                                    <Form.Control placeholder="" name="Address" onChange={handleApplyInfo}  />
                                </FloatingLabel>

                            </div>

                            
                            <FloatingLabel
                            controlId="floatingInput"
                            label="رقم هاتف ولي الأمر"
                            className="w-100"
                            >
                                <Form.Control placeholder="" name="Mobile_No" onChange={handleApplyInfo}  />
                            </FloatingLabel>

                               
                            <FloatingLabel
                            controlId="floatingInput"
                            label="البريد الإلكتروني لولي الأمر"
                            className="w-100"
                            >
                                <Form.Control placeholder="" name="Email" onChange={handleApplyInfo} />
                            </FloatingLabel>

                        </Form>
                    </Carousel.Item>

                    <Carousel.Item className='bg-white'>
                        <Form className="d-flex flex-column w-100 gap-3">

                            
                            <Form.Select name="Faculty_ID" value={applyInfo[2].Faculty_ID} onChange={(e)=>{
                                handleApplyInfo(e);
                                setApplyInfo(a => ({
                                    ...a,
                                    [2]: {
                                        ...a[2],
                                        Department_ID: ""
                                    }
                                }))
                            }} >
                                <option value="">اختر الكلية</option>
                                {
                                    faculties.map((fac)=>
                                    <option value={fac.Faculty_ID}>{fac.Faculty_Name}</option>
                                    )
                                }
                            </Form.Select>    

                            <Form.Select name="Department_ID" value={applyInfo[2].Department_ID} onChange={handleApplyInfo} >
                                <option value="">اختر القسم</option>
                                {
                                    departments.map((dep)=>
                                    <option value={dep.Department_ID}>{dep.Department_Name}</option>
                                    )
                                }
                            </Form.Select>

                            <FloatingLabel
                            controlId="floatingInput"
                            label="المستوى"
                            className="w-100"
                            >
                                <Form.Control placeholder="" type="number" name="Level" onChange={handleApplyInfo} />
                            </FloatingLabel>                  

                        </Form>
                    </Carousel.Item>

                </Carousel>
                <div className='w-100 p-4 pt-2 mt-3'>
                    {
                        formIndex>0 &&
                        <Button variant='transparent' className='mb-2 text-primary' onClick={prevFormIndex}>السابق</Button>
                    }
                    <Button className='w-100 fs-5' onClick={nextFormIndex}>
                    {
                        formIndex == formHeaders.length-1 ? "تسليم طلب الإلتحاق" : "التالي"
                    }
                    </Button>
                </div>
            </div>
            <div>
                <Button variant='white' to={"/"} as={Link}>الرجوع الى الرئيسية</Button>
            </div>
        </div>
    );
}

export default Apply;