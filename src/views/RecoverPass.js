import React, { useContext, useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import {modalContext} from '../contexts/ModalContext';
import Button1 from '../components/buttons/Button1';
import InputPass from '../components/inputs/InputPass';
import logoExM from '../images/logo-exm-color.png';
import PassServices from '../services/recoverpass/PassServices';
import Loading from '../components/Loading';

const RecoverPass = () => {
    const [loading, setLoading] = useState(true);
    const [status, setStatus] = useState(0);
    const [name, setName] = useState(false);
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);
    const ModalContext = useContext(modalContext);
    const {closeModal} = ModalContext;

    const {c} = useParams();
    useEffect(() => {
        PassServices.getrecover(c)
        .then(res => {
            console.log(res.data);
            if(res.data.status === 1){
                setClasses(false);
                setMessage(false);
                setName(res.data.name);
                setStatus(1);
                setLoading(false);
            }
            else{
                setClasses('border-red-800 text-red-800 bg-red-100');
                setMessage('Ocurrió un error, inténtalo más tarde.');
                setStatus(-1);
                setLoading(false);
            }
        })
        .catch(e => {
            console.error(e);
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Ocurrió un error, inténtalo más tarde.');
            setStatus(-1);
            setLoading(false);
        })
    }, [])

    const changePass = ()=> { 
        setDisabled(true);
        const password = document.getElementById('password').value;
        PassServices.resetpass({code:c, password})
        .then(res => {
            console.log(res.data);
            if(res.data.status === 1){
                setClasses('border-green-800 text-green-800 bg-green-100');
                setMessage(<div>¡Contraseña actualizada con éxito! <br/>
                    <Link to={ process.env.REACT_APP_HOMEPAGE } className='text-blue-exm' onClick={closeModal}>Volver a la página de inicio</Link>
                    </div>);
                setLoading(false);
            }
            else{
                setDisabled(false);
                setClasses('border-red-800 text-red-800 bg-red-100');
                setMessage('Ocurrió un error, inténtalo más tarde.');
                setLoading(false);
            }
        })
        .catch(e => {
            setDisabled(false);
            console.error(e);
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Ocurrió un error, inténtalo más tarde.');
            setLoading(false);
        })
    };


    return (
        <div className='h-screen w-full flex justify-center items-center content-center p-2'>
        {loading ?
            <Loading/>
        : 
            <section className='w-full md:w-2/5 p-2 md:p-5 rounded-sm border border-gray-200 bg-white shadow-lg'>
                <img alt='Logo ExM' src={ logoExM } className='my-2 w-4/5 md:w-2/5 mx-auto'/>
                {status === 1 ? 
                <>
                    <div className='my-2 text-center'>
                        <h2 className='font-semibold my-2'>¡Hola, {name ? name : ''}!</h2>
                        <p>Por favor, introduce tu nueva contraseña</p>
                    </div>
                    <InputPass name='password' placeholder='Nueva contraseña'/>

                    <div className='my-2'>
                        <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
                        <Button1 text='Confirmar mi nueva contraseña' foo={ changePass } disabled={disabled}/>
                    </div>
                    </>
                :
                <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
                
                }
            </section>
        }
        </div>
    )
}

export default RecoverPass;