import React, { useContext } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { Routes ,Route, useParams } from 'react-router-dom';
import { FaRegUser } from 'react-icons/fa';
import { HiOutlineUserGroup } from 'react-icons/hi';
import Title from '../components/Title';
import NewsLetters from '../components/news/NewsLetters';
import Sidebar from '../components/menus/Sidebar';

const News = () => {
    const cContext = useContext(cookiesContext);
    const { getCookies } = cContext;
    const tok = getCookies()['tok_platav2'];
    let screen = useParams()['*'];

    const list = [
        {id:1, link: 'alumni', text: <span>Boletín <em>alumni</em></span>, icon: <FaRegUser/> },
        {id:2, link: 'exm', text: 'Boletín ExM', icon: <HiOutlineUserGroup/> },
        {id:3, link: 'regional', text: 'Boletín regional', icon: <HiOutlineUserGroup/> },
    ];

    return (
        <div className='w-full lg:w-5/6 mx-auto'>
            <Title title={ <span>COMUNIDAD <em>ALUMNI</em></span> } />
            <div className='w-full grid grid-cols-1 lg:grid-cols-5 mt-3'>

                <Sidebar list={list} view='noticias' screen={screen}/>

                <div className='col-span-4'>
                    <Routes>
                        <Route path={`alumni`} element={<NewsLetters tok={ tok } ntype={ 1 }/>} />      
                        <Route path={`exm`} element={<NewsLetters tok={ tok } ntype={ 2 }/>} />            
                        <Route path={`regional`} element={<NewsLetters tok={ tok } ntype={ 3 }/>} />            
                    </Routes>
                </div>
            </div>
        </div>
    )
}

export default News;