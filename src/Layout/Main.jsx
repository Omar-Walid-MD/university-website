import React from 'react';
import { Outlet } from 'react-router';
import NavBar from '../Layout/NavBar';
import Footer from '../Layout/Footer';

function Main({}) {
    return (
        <>
            <NavBar />
            <Outlet />
            <Footer />
        </>
    );
}

export default Main;