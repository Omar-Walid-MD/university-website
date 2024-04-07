import { Outlet } from 'react-router';

import 'bootstrap/dist/css/bootstrap.rtl.min.css';
import './App.css';
import ScrollToTop from './Layout/ScrollToTop';
import NavBar from './Layout/NavBar';

function App() {
  return (
    <div>
      <ScrollToTop />
      <Outlet />
    </div>
  );
}

export default App;
