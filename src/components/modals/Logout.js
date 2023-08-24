import React, { useContext } from 'react';
import { useNavigate } from 'react-router-dom';
import { cookiesContext } from '../../contexts/CookiesContext';
import BtnCloseModal from '../buttons/BtnCloseModal';
import Button1 from '../buttons/Button1';

const Logout = () => {
    const navigate = useNavigate();
    const context = useContext(cookiesContext);
    const { removeCookies } = context;
    const logOut = () => {
        removeCookies();
        removeCookies();
        document.getElementById('btn-close').click();
        navigate(process.env.REACT_APP_HOMEPAGE);
        return;
    };

    return (
        <div>
            <p className="w-full text-center text-lg p-4">¿Quieres cerrar sesión?</p>
            <div className="w-full flex justify-end p-2">
                <div className='grid grid grid-cols-2 gap-2 w-full md:w-1/2'>
                    <Button1 text='Cerrar sesión' foo={logOut} disabled={false}/>
                    <BtnCloseModal/>
                </div>
            </div>
        </div>
    )
}

export default Logout;
