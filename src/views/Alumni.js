import React, { useContext } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { Routes ,Route, useParams } from 'react-router-dom';
import Sidebar from '../components/menus/Sidebar';
import Title from '../components/Title';
import BeAlumni from '../components/bealumni/BeAlumni';
import Teach4All from '../components/bealumni/Teach4All';
import Calendar from '../components/bealumni/Calendar';
import {GiGraduateCap} from 'react-icons/gi';
import {BiNetworkChart, BiCalendar} from 'react-icons/bi';
import {GrDocumentText} from 'react-icons/gr';
import Repository from '../components/bealumni/Repository';

const Alumni = () => {
    const cContext = useContext(cookiesContext);
    const { getCookies } = cContext;
    const tok = getCookies()['tok_platav2'];
    const usertype = getCookies()['usertype_platav2'];
    let screen = useParams()['*'];

    const list = [
        {id:1, link: 'alumni', text: <span>Ser <em>alumni</em></span>, icon: <GiGraduateCap/> },
        {id:2, link: 'teachforall', text: 'Teach For All', icon: <BiNetworkChart/> },
        {id:3, link: 'calendario', text: 'Calendario de eventos', icon: <BiCalendar/> },
        {id:4, link: 'repositorio', text: 'Repositorio documental', icon: <GrDocumentText/> },
    ];
    return (
        <div className='w-full lg:w-5/6 mx-auto'>
                <Title title={ <span>COMUNIDAD <em>ALUMNI</em></span> } />
                <div className='w-full grid grid-cols-1 lg:grid-cols-5 mt-3'>

                    <Sidebar list={list} view='ser-alumni' screen={screen}/>

                    <div className='col-span-4'>
                        <Routes>
                            <Route path={`alumni`} element={<BeAlumni/>} />      
                            <Route path={`teachforall`} element={<Teach4All/>} />      
                            <Route path={`calendario`} element={<Calendar tok={tok} usertype={usertype}/>} />      
                            <Route path={`repositorio`} element={<Repository tok={tok} usertype={usertype}/>} />      
                        </Routes>
                    </div>
                </div>
            </div>
    )
}

export default Alumni;