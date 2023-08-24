import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import Button1 from '../components/buttons/Button1';
import InputText from '../components/inputs/InputText';
import logoExM from '../images/logo-exm-color.png';
import PassServices from '../services/recoverpass/PassServices';

const ForgotPass = () => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);

    const forgot = ()=> { 
        const email = document.getElementById('email').value;
        if(email.length > 0){
            setDisabled(true);
            PassServices.forgot({email})
            .then(res => {
                console.log(res.data);
                if(res.data.status === 1){
                    setClasses('border-green-800 text-green-800 bg-green-100');
                    setMessage(res.data.message);
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
                setMessage('Ocurrió un problema, inténtalo más tarde.');
            })
        }
        else{
            setDisabled(false);
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Por favor, introduce tu email');
        }
    }; 
    return (
        <div className='h-screen w-full flex justify-center items-center content-center p-2'>
            <section className='w-full md:w-2/5 p-2 md:p-5 rounded-sm border border-gray-200 bg-white shadow-lg'>
                <img alt='Logo ExM' src={ logoExM } className='my-2 w-4/5 md:w-2/5 mx-auto'/>
                <div className='my-2'>
                    <h2 className='font-semibold text-center my-2'>¿Tienes problemas para iniciar sesión?</h2>
                    <p>Ingresa el correo electrónico con el que te registraste y te enviaremos un enlace para que recuperes el acceso a tu cuenta.</p>
                </div>
                <InputText type='text' name='email' placeholder='Introduce el correo electrónico con el que te registraste'/>

                <div className='my-2'>
                    <Button1 text='Enviar correo para recuperar mi contraseña' foo={ forgot } disabled={disabled}/>
                </div>

                <div className='my-2 text-center'>
                    <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
                    <Link to={ process.env.REACT_APP_HOMEPAGE } className='font-semibold text-blue-exm'>Volver a la página de inicio</Link>
                </div>
            </section>
        </div>
    )
}

export default ForgotPass;