import React, { useContext } from 'react';
import { Link } from 'react-router-dom';
import { modalContext } from '../contexts/ModalContext';
import ImgRAlumni from '../images/register-alumni.png';
import ImgROrg from '../images/register-org.png';
import logoExM from '../images/logo-exm-color.png';
import Button1 from '../components/buttons/Button1';
import RegisterForm from '../components/forms/register/RegisterForm';

const Register = () => {
    const mContext = useContext(modalContext);
    const { openModal } = mContext;

    return (
        <div className='w-full h-screen flex flex-wrap justify-center content-center items-center'>
            <section className='w-full md:w-3/4 text-center my-4 grid grid-cols-1 justify-center items-center content-center'>
                <img alt='Logo ExM' src={ logoExM } className='my-2 w-4/5 md:w-1/4 mx-auto'/>
                <h2 className='font-bold text-xl text-blue-exm'>¡Crea tu cuenta!</h2>
            </section>
            <section className='grid grid-cols-2 gap-5 w-full md:w-2/5 p-3'>
                <div>
                    <img src={ImgRAlumni} alt='register-alumni'/>
                    <Button1 text='Soy Alumni' foo={ () => {openModal(<RegisterForm type={2}/>, 'Registro Alumni', 'md:w-2/5')} }/>
                </div>
                <div>
                    <img src={ImgROrg} alt='register-organization'/>
                    <Button1 text='Soy organización' foo={ () => {openModal(<RegisterForm type={3}/>, 'Registro Alumni', 'md:w-2/5')} }/>
                </div>
            </section>
            <section className='w-full flex justify-center items-center my-2'>
                <span>¿Ya tienes cuenta? <Link to={`${ process.env.REACT_APP_HOMEPAGE }`} className='text-blue-exm font-semibold'>Inicia sesión</Link></span>
            </section>
        </div>
    )
}

export default Register;