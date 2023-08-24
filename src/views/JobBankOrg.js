import React, { useContext } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { modalContext } from '../contexts/ModalContext';
import { Routes ,Route, useParams } from 'react-router-dom';
import Sidebar from '../components/menus/Sidebar';
import Title from '../components/Title';
import {FaUser} from 'react-icons/fa';
import {MdOutlineWork, MdWorkspaces} from 'react-icons/md';
import { CgCommunity } from 'react-icons/cg';
import Profile from '../components/jobbankorg/Profile';
import Vacants from '../components/jobbankorg/Vacants';
import Postulations from '../components/jobbankorg/Postulations';
import AlumnisOrg from '../components/jobbankorg/AlumnisOrg';
import PostVacant from '../components/jobbankorg/PostVacant';

const JobBankOrg = () => {
    const cContext = useContext(cookiesContext);
    const mContext = useContext(modalContext);
    const { getCookies } = cContext;
    const { openModal, closeModal } = mContext;
    const tok = getCookies()['tok_platav2'];
    const usertype = getCookies()['usertype_platav2'];
    let screen = useParams()['*'];

    const list = [
        {id:1, link: 'perfil', text: <span>Perfil</span>, icon: <FaUser/> },
        {id:2, link: 'publica-vacante', text: 'Publica una vacante', icon: <MdOutlineWork/> },
        {id:3, link: 'vacantes', text: 'Vacantes', icon: <MdOutlineWork/> },
        {id:4, link: 'postulaciones', text: 'Postulaciones', icon: <MdWorkspaces/> },
        {id:5, link: 'alumnis', text: 'Conoce a la comunidad', icon: <CgCommunity/> },
    ];
    return (
        <div className='w-full lg:w-5/6 mx-auto bg-gray-50'>
                <Title title={ <span>BOLSA DE TRABAJO</span> } />
                <div className='w-full grid grid-cols-1 lg:grid-cols-5 mt-3'>
                    <Sidebar list={list} view='bt-org' screen={screen}/>
                    <div className='lg:col-span-4'>
                        <Routes>
                            <Route path={`perfil`} element={<Profile tok={tok}/>} />      
                            <Route path={`publica-vacante`} element={<PostVacant tok={tok} usertype={usertype} openModal={openModal} closeModal={closeModal}/>} />      
                            <Route path={`vacantes`} element={<Vacants tok={tok} usertype={usertype} openModal={openModal} closeModal={closeModal}/>} />      
                            <Route path={`postulaciones`} element={<Postulations tok={tok} usertype={usertype} openModal={openModal} closeModal={closeModal}/>} />      
                            <Route path={`alumnis`} element={<AlumnisOrg tok={tok} usertype={usertype} openModal={openModal} closeModal={closeModal}/>} />      
                        </Routes>
                    </div>
                </div>
            </div>
    )
}

export default JobBankOrg;