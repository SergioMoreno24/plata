import React, { useContext } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { Routes ,Route,NavLink, useParams } from 'react-router-dom';
import { FaRegUser } from 'react-icons/fa';
import { HiOutlineUserGroup } from 'react-icons/hi';
import Title from '../components/Title';
import Oportunities2 from '../components/oportunities/Oportunities2';
import Formation from '../components/oportunities/Formation';
import Sidebar from '../components/menus/Sidebar';

const Oportunities = () => {
    const cContext = useContext(cookiesContext);
    const { getCookies } = cContext;
    const tok = getCookies()['tok_platav2'];
    let screen = useParams()['*'];
    const list = [
        {id:1, link: 'oportunidades', text: 'Oportunidades', icon: <FaRegUser/> },
        {id:2, link: 'formacion', text: 'Formación', icon: <HiOutlineUserGroup/> },
    ];

    return (
        <div className='w-full lg:w-5/6 mx-auto'>
            <Title title={ <span>COMUNIDAD <em>ALUMNI</em></span> } />
            <div className='w-full grid grid-cols-1 md:grid-cols-5 mt-3'>
                <Sidebar list={list} view='oportunidades' screen={screen}/>

                <div className='col-span-4'>
                    <Routes>
                        <Route path={`oportunidades`} element={<Oportunities2 tok={ tok }/>} />           
                        <Route path={`formacion`} element={<Formation tok={ tok }/>} />            
                    </Routes>
                </div>
            </div>
        </div>
    )
}

export default Oportunities;