import React, { useContext, useEffect, useState } from 'react';
import { modalContext } from '../../contexts/ModalContext';
import { NavLink } from 'react-router-dom';
import logoAlumni from '../../images/logo-alumni-color.png';
import MenusServices from '../../services/menus/MenusServices';
import VisitsServices from '../../services/visits/VisitsServices';
import {GiHamburgerMenu} from 'react-icons/gi';
import Logout from '../modals/Logout';

const Navbar = ({ tok }) => {
    const ModalContext = useContext(modalContext);
    const {openModal} = ModalContext;

    const [options, setOptions] = useState(false);

    const index = process.env.REACT_APP_HOMEPAGE;
    const pathname = window.location.pathname;
    useEffect(() => {
        MenusServices.getNavbar(tok)
        .then(res => {
            if(res.data.status === 1){
                setOptions(res.data.options);
            }
        })
        .catch(e => {
            console.error(e);
        })
    }, []);

    const toggleMinimenu = () => {
        document.getElementById('menu').classList.toggle('hidden');
    };

    const setVisit = (page) => {
        VisitsServices.storevisit(tok, {page})
    };

    return (
        <div className='w-full bg-white p-3 text-xs'>
            <div className='w-full lg:w-4/5 mx-auto flex flex-wrap lg:flex-nowrap lg:justify-between items-center content-center font-black'>

                <div className='w-full lg:w-16 flex justify-between items-center content-center'>
                    <img alt='ExM' src={ logoAlumni } className='w-12 h-12'/>
                    <button className='block lg:hidden p-3 text-2xl text-purple-exm' onClick={ toggleMinimenu }><GiHamburgerMenu/></button>
                </div>

                <div className='hidden lg:flex lg:flex-wrap lg:flex-nowrap text-center gap-2 lg:gap-4 w-full lg:w-auto' id='menu'>
                    {options ? 
                        options.map(o => {
                            return <NavLink key={o.id} to={ `${index}${o.link}` } className={`w-full lg:w-auto py-2 lg:py-1 hover:text-blue-exm cursor-pointer border-b-2 hover:border-blue-exm flex items-center content-center justify-center text-center ${ o.active.includes(pathname) ? 'text-blue-exm border-blue-exm' : 'border-transparent' }`} onClick={ () => { document.getElementById('menu').classList.add('hidden');setVisit(o.id); } }>{ o.text }</NavLink>
                        })
                    :
                    <></>
                    }
                    {options?
                    <div className={`w-full lg:w-auto py-2 lg:py-1 hover:text-blue-exm cursor-pointer hover:border-blue-exm flex items-center content-center justify-center text-center text-red-800`} onClick={ () => { openModal(<Logout/>, <span>Cerrar sesión</span>, 'lg:w-1/2')  }}>SALIR</div>
                    :
                    <></>}
                </div>
            </div>
        </div>
    )
}

export default Navbar;