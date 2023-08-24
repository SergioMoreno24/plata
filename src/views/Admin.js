import React, { useContext } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { Routes ,Route, useParams } from 'react-router-dom';
import Sidebar from '../components/menus/Sidebar';
import Title from '../components/Title';
import Stats from '../components/admin/Stats';
import Users from '../components/admin/Users';
import { MdQueryStats, MdSwitchAccount } from 'react-icons/md';

const Alumni = () => {
    const cContext = useContext(cookiesContext);
    const { getCookies } = cContext;
    const tok = getCookies()['tok_platav2'];
    const usertype = getCookies()['usertype_platav2'];
    let screen = useParams()['*'];

    const list = [
        {id:2, link: 'cuentas', text: <span>Cuentas</span>, icon: <MdSwitchAccount/> },
        {id:1, link: 'estadisticas', text: <span>Estadísticas</span>, icon: <MdQueryStats/> },
    ];
    return (
        <div className='w-full lg:w-5/6 mx-auto'>
                <Title title={ <span>ADMIN</span> } />
                <div className='w-full grid grid-cols-1 lg:grid-cols-5 mt-3'>

                    <Sidebar list={list} view='admin' screen={screen}/>

                    <div className='col-span-4'>
                        <Routes>
                            <Route path={`cuentas`} element={<Users tok={tok}/>} />      
                            <Route path={`estadisticas`} element={<Stats tok={tok}/>} />      
                        </Routes>
                    </div>
                </div>
            </div>
    )
}

export default Alumni;