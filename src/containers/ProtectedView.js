import React, { useContext, useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { cookiesContext } from '../contexts/CookiesContext';
import Navbar from '../components/menus/Navbar';
import Footer from '../components/Footer';

const ProtectedView = ({ children, allowedTypes }) => {
    const context = useContext(cookiesContext);
    const { areThereCookies, getCookies } = context;
    const usertype = getCookies()['usertype_platav2'];
    const tok = getCookies()['tok_platav2'];
    let navigate = useNavigate();
    const [component, setComponent] = useState(false);

    useEffect(() => {
        if(areThereCookies()){
            if(allowedTypes.includes(usertype))
                setComponent(children);
            else{
                setComponent('Sin permiso');
            }
        }
        else{
            navigate(`${ process.env.REACT_APP_HOMEPAGE }`, { replace: true });
        }
    }, [children]); // eslint-disable-line react-hooks/exhaustive-deps

    return (
        
        <div className="w-full min-h-screen">
            <Navbar tok={ tok }/>
            <div className="col-span-1 md:col-span-8 min-h-screen">
                { component }
            </div>
            <Footer/>
        </div>
    )
}

export default ProtectedView;