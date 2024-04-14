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
                        path:"faculty/:facultyName",
                        element: <FacultyInfo />
                    },
                    {
                        path:"department/:departmentName",
                        element: <DepartmentInfo />
                    },

                    {
                        path:"student",
                        element: <Student />
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