import { createBrowserRouter } from "react-router-dom";
import App from "../App";

import Home from "../Pages/Home";
import FacultyInfo from "../Pages/FacultyInfo";
import DepartmentInfo from "../Pages/DepartmentInfo";
import Login from "../Pages/Auth/Login";
import Main from "../Layout/Main";
import Auth from "../Layout/Auth";
import Apply from "../Pages/Auth/Apply";
import Faculties from "../Pages/Faculties";
import Student from "../Pages/Student";

import CourseSelection from "../Pages/CourseSelection";
import Dashboard from "../Pages/Admin/Dashboard";
import AdminStudents from "../Pages/Admin/AdminStudents";
import AdminProfessors from "../Pages/Admin/AdminProfessors";

const router = createBrowserRouter([
    {
        path: "/",
        element: <App />,
        // errorElement: <ErrorPage />,
        children: [
            {
                path: "",
                element: <Main />,
                children: [
                    {
                        path: "",
                        element: <Home />
                    },
                    {
                        path: "faculties",
                        element: <Faculties />
                    },
                    {
                        path:"faculty/:facultyID",
                        element: <FacultyInfo />
                    },
                    {
                        path:"department/:departmentID",
                        element: <DepartmentInfo />
                    },
                    {
                        path:"student",
                        element: <Student />
                    },
                    {
                        path:"course-selection",
                        element: <CourseSelection />
                    },
                    {
                        path: "dashboard",
                        element: <Dashboard />,
                    },
                    {
                        path: "dashboard/students",
                        element: <AdminStudents />
                    },
                    {
                        path: "dashboard/professors",
                        element: <AdminProfessors />
                    }
                ]
            },
            {
                path: "",
                element: <Auth />,
                children: [
                    {
                        path: "/login",
                        element: <Login />
                    },
                    {
                        path: "/apply",
                        element: <Apply />
                    }
                ]
            }
        ]
        
    }
    
    
]);

export default router;