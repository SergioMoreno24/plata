import React, { useContext } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { modalContext } from '../contexts/ModalContext';
import { Routes ,Route, useParams } from 'react-router-dom';
import Sidebar from '../components/menus/Sidebar';
import Title from '../components/Title';
import Profile from '../components/jobbank/Profile';
import {FaUser} from 'react-icons/fa';
import {MdOutlineWork, MdWorkspaces} from 'react-icons/md';
import Vacants from '../components/jobbank/Vacants';
import Postulations from '../components/jobbank/Postulations';

const JobBank = () => {
    const cContext = useContext(cookiesContext);
    const mContext = useContext(modalContext);
    const { getCookies } = cContext;
    const { openModal, closeModal } = mContext;
    const tok = getCookies()['tok_platav2'];
    const usertype = getCookies()['usertype_platav2'];
    let screen = useParams()['*'];

    const list = [
        {id:1, link: 'perfil', text: <span>Perfil</span>, icon: <FaUser/> },
        {id:2, link: 'vacantes', text: 'Vacantes', icon: <MdOutlineWork/> },
        {id:3, link: 'postulaciones', text: 'Postulaciones', icon: <MdWorkspaces/> },
    ];
    return (
        <div className='w-full lg:w-5/6 mx-auto'>
                <Title title={ <span>BOLSA DE TRABAJO</span> } />
                <div className='w-full grid grid-cols-1 lg:grid-cols-5 mt-3'>
                    <Sidebar list={list} view='bt' screen={screen}/>
                    <div className='lg:col-span-4'>
                        <Routes>
                            <Route path={`perfil`} element={<Profile tok={tok}/>} />      
                            <Route path={`vacantes`} element={<Vacants tok={tok} usertype={usertype} openModal={openModal} closeModal={closeModal}/>} />      
                            <Route path={`postulaciones`} element={<Postulations tok={tok} usertype={usertype} openModal={openModal} closeModal={closeModal}/>} />      
                        </Routes>
                    </div>
                </div>
            </div>
    )
}

export default JobBank;