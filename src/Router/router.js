import { createBrowserRouter } from "react-router-dom";
import App from "../App";

import Home from "../Pages/Home";
import CollegeInfo from "../Pages/CollegeInfo";
import DepartmentInfo from "../Pages/DepartmentInfo";
import Login from "../Pages/Auth/Login";
import Main from "../Layout/Main";
import Auth from "../Layout/Auth";
import Apply from "../Pages/Auth/Apply";

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
                        path:"col/:colName",
                        element: <CollegeInfo />
                    },
                    {
                        path:"department/:departmentName",
                        element: <DepartmentInfo />
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