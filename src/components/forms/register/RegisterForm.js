import React, { useContext, useState } from 'react';
import { Link } from 'react-router-dom';
import RegisterServices from '../../../services/users/RegisterServices';
import Button1 from '../../buttons/Button1';
import InputPassTitle from '../../inputs/InputPassTitle';
import InputTextTitle from '../../inputs/InputTextTitle';
import TextAreaTitle from '../../inputs/TextAreaTitle';
import {modalContext} from '../../../contexts/ModalContext';
const RegisterForm = ({ type }) => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);
    const ModalContext = useContext(modalContext);
    const {closeModal} = ModalContext;
    const isFull = (id) => {
        let form = document.getElementById(id).querySelectorAll('input');
        for(let a  = 0; a < form.length; a++){
            if(form[a].value === '')
                return false;
        }
        return true;
    };
    const getData = (id) => {
        let data = {};
        let form = document.getElementById(id).querySelectorAll('input');
        for(let a  = 0; a < form.length; a++){
            data[form[a].name] = form[a].value
        }
        return data;
    };
    const register = () => {
        setDisabled(true);
        if(isFull('form')){
            let data = getData('form');
            data['type'] = type;
            data['address'] = type === 3 ? document.getElementById('address').value : ''
            console.log(data);
            RegisterServices.register(data)
            .then(res => {
                console.log(res.data);
                if(res.data.status === 1){
                    setDisabled(true);
                    setClasses('border-green-800 text-green-800 bg-green-100');
                    setMessage(<div>¡Cuenta creada con éxito! <br/>
                    <Link to={ process.env.REACT_APP_HOMEPAGE } className='text-blue-exm' onClick={closeModal}>Volver a la página de inicio</Link>
                    </div>);
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
        }
        else{
            setDisabled(false);
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Por favor, llena todos los campos');
        }
        return;
    };
    return (
        <div className='bg-gray-100 p-2'>
            <section id='form' className='p-1'>
                <h3 className='text-lg font-semibold text-blue-exm3 text-center border-b-2 border-blue-exm2'>Registro { type === 2 ? <em>alumni</em> : <span>organización</span> }</h3>
                {type === 2 ?
                    <>
                    <div className='my-2'>
                        <InputTextTitle type='text' name='email' placeholder='Ingresa tu correo electrónico' title='Correo electrónico'/>
                        <p className='text-xs text-gray-800 font-semibold'>*Recuerda que debes ingresar tu correo de <em>Alumni</em></p>
                    </div>
                    <div className='my-1'>
                        <InputPassTitle name='password' placeholder='Crea tu contraseña' title='Contraseña'/>
                    </div>
                    </>
                :
                <>
                <div className='my-1'>
                    <InputTextTitle type='text' name='email' placeholder='Ingresa el correo electrónico del contacto principal' title='Correo electrónico'/>
                </div>
                <div className='my-1'>
                    <InputPassTitle name='password' placeholder='Crea tu contraseña' title='Contraseña'/>
                </div>
                <div className='my-1'>
                    <InputTextTitle type='text' name='name' placeholder='Razón social' title='Razón social'/>
                </div>
                <div className='my-1'>
                    <InputTextTitle type='text' name='comercialname' placeholder='Nombre comercial' title='Nombre comercial'/>
                </div>
                <div className='my-1'>
                    <TextAreaTitle type='text' name='address' placeholder='Dirección' title='Dirección'/>
                </div>
                <div className='my-1'>
                    <InputTextTitle type='text' name='link' placeholder='Link de tu página web' title='Link de tu página web'/>
                </div>
                </>
                }
            </section>
            <section className='border-top border-gray-500 p-2 flex flex-wrap justify-end items-center content-center'>
                <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
                <Button1 text='Registrar' foo={ register } disabled={disabled}/>
            </section>
        </div>
    )
}

export default RegisterForm;