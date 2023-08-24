import React, { useContext, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import logoExM from '../../../images/logo-exm-color.png';
import logoAlumni from '../../../images/logo-alumni-color.png';
import LoginServices from '../../../services/users/LoginServices';
import { cookiesContext } from '../../../contexts/CookiesContext';
import InputText from '../../inputs/InputText';
import InputPass from '../../inputs/InputPass';
import Button1 from '../../buttons/Button1';


const LoginForm = () => {
    const context = useContext(cookiesContext);
    const { setCookies } = context;
    const navigate = useNavigate();
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);

    const login = () => { 
        setDisabled(true);
        let email = document.getElementById('email').value;
        let password = document.getElementById('password').value;
        LoginServices.login({email, password})
        .then(res => {
            if(res.data.status === 1){
                setDisabled(false);
                setCookies(res.data.data.usertype, res.data.data.tok);
                
                res.data.data.usertype === '3' ? navigate( `${process.env.REACT_APP_HOMEPAGE}bt-org/perfil` , { replace: true }) : navigate( `${process.env.REACT_APP_HOMEPAGE}inicio` , { replace: true });
            }
            else{
                setDisabled(false);
                setClasses('border-red-800 text-red-800 bg-red-100');
                setMessage(res.data.message);
            }
        })
        .catch(e => { 
            console.error(e);
            setDisabled(false);
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Ocurrió un error, inténtalo más tarde.');
        })
     };
    return (
        <section className='mt-32 md:mt-1 md:absolute w-full md:h-full md:w-1/3 md:top-1/4 md:left-32 p-2'>
            <h2 className='font-semibold text-lg text-center my-2'>¡TE DAMOS LA BIENVENIDA!</h2>
            <div className='my-1'><InputText type='text' name='email' placeholder='Correo electrónico' extraclasses={''}/></div>
            <div className='my-1'><InputPass name='password' placeholder='Password'/></div>
            <div className='text-center'><Link to={`${ process.env.REACT_APP_HOMEPAGE }olvide`} className='text-gray-800 text-sm'>¿Olvidaste tu contraseña?</Link></div>
            <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 mt-1 ${classes}` : '' }` }>{message}</div>
            <div className='mt-3'><Button1 text='INICIAR SESIÓN' foo={ login } disabled={ disabled }/></div>
            <div className='mt-3 text-center'><span>¿Aún no tienes cuenta? <Link to={`${ process.env.REACT_APP_HOMEPAGE }registro`} className='text-blue-exm font-semibold'>Regístrate aquí</Link></span></div>
            <section className='grid grid-cols-2 gap-1 mt-3'>
                <div className='flex justify-cener items-center content-center'><img src={ logoExM } alt='Logo ExM'/></div>
                <div className='flex justify-cener items-center content-center'><img src={ logoAlumni } alt='Logo Alumni'/></div>
            </section>
        </section>
    )
}

export default LoginForm;