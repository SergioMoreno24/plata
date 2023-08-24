import React, { useContext } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { modalContext } from '../contexts/ModalContext';
import { Routes ,Route,NavLink, useParams } from 'react-router-dom';
import { FaRegUser } from 'react-icons/fa';
import { HiOutlineUserGroup, HiOutlineLightBulb } from 'react-icons/hi';
import { CgCommunity } from 'react-icons/cg';
import { GoBook } from 'react-icons/go';
import Title from '../components/Title';
import Committee from '../components/community/Committee';
import Entrepreneurships from '../components/community/Entrepreneurships';
import Stories from '../components/community/Stories';
import Community2 from '../components/community/Community2';
import Directory from '../components/community/Directory';

const Community = () => {
    const cContext = useContext(cookiesContext);
    const { getCookies } = cContext;

    const mContext = useContext(modalContext);
    const { openModal, closeModal } = mContext;

    const tok = getCookies()['tok_platav2'];
    const usertype = getCookies()['usertype_platav2'];
    
    let screen = useParams()['*'];
    const list = [
        {id:1, link: 'directorio', text: 'Directorio', icon: <FaRegUser/> },
        {id:2, link: 'comite', text: <span>Comité <em>alumni</em></span>, icon: <HiOutlineUserGroup/> },
        {id:3, link: 'emprendimientos', text: <span>Emprendimientos <em>alumni</em></span>, icon: <HiOutlineLightBulb/> },
        {id:4, link: 'comunidad', text: 'Comunidades', icon: <CgCommunity/> },
        {id:5, link: 'historias', text: 'Historias', icon: <GoBook/> },
    ];
    return (
        <div className='w-full lg:w-5/6 mx-auto'>
            <Title title={ <span>COMUNIDAD <em>ALUMNI</em></span> } />
            <div className='w-full grid grid-cols-1 md:grid-cols-5 mt-3'>

                <div className='col-span-1 lg:min-h-screen p-2'>
                    <ul className='w-full text-blue-exm3 font-semibold bg-gray-200 rounded-xl overflow-hidden text-sm'>
                        { list.map(l => {
                            return <li key={ l.id } className={`w-full py-3 px-4 hover:bg-gray-300 cursor-pointer ${ screen === l.link ? 'font-black border-b-2 border-blue-exm2 bg-gray-300' : '' }`}>
                            <NavLink to={`${process.env.REACT_APP_HOMEPAGE}comunidad/${ l.link }`} className='block grid grid-cols-6 items-center content-center'>
                                <div className='col-span-1 text-lg'>{ l.icon }</div>
                                <div className='col-span-5' >{ l.text }</div>
                            </NavLink>
                            </li>
                        }) }
                    </ul>
                </div>

                <div className='col-span-4'>
                    <Routes>
                        <Route path={`directorio`} element={<Directory tok={ tok }/>} />      
                        <Route path={`comite`} element={<Committee tok={ tok }/>} />      
                        <Route path={`emprendimientos`} element={<Entrepreneurships tok={tok} usertype={usertype} openModal={openModal} closeModal={closeModal}/>} />      
                        <Route path={`comunidad`} element={<Community2/>} />      
                        <Route path={`historias`} element={<Stories/>} />      
                    </Routes>
                </div>
            </div>
        </div>
    )
}

export default Community;