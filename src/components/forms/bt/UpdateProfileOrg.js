import React, { useState } from 'react';
import InputTextTitle from '../../inputs/InputTextTitle';
import TextAreaTitle from '../../inputs/TextAreaTitle';
import Button1 from '../../buttons/Button1';
import BtOrgServices from '../../../services/bt/BtOrgServices';

const UpdateProfileOrg = ({ tok, profile, setProfile, closeModal }) => {
    const [name, setName] = useState(profile.name);
    const [comercialname, setComercialName] = useState(profile.comercialname);
    const [description, setDescription] = useState(profile.description);
    const [address, setAddress] = useState(profile.address);
    const [link, setLink] = useState(profile.link);
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);

    const update = () => {
        setMessage(false);
        setClasses(false);
        setDisabled(true);
        const data = {name, comercialname, address, description, link};
        BtOrgServices.updateProfile(tok, data)
        .then(res => {
            console.log(res.data);
            if(res.data.status === 1){
                setMessage(res.data.message);
                setClasses('border-green-800 text-green-800 bg-green-100');
                setDisabled(false);
                setProfile(res.data.profile);
                setTimeout(() => { closeModal() }, 1500)
            }
            else{
                setMessage(res.data.message);
                setClasses('border-red-800 text-red-800 bg-red-100');
                setDisabled(false);
            }
        })
        .catch(e => {
            console.error(e);
            setMessage('Ocurrió un error, inténtalo más tarde');
            setClasses('border-red-800 text-red-800 bg-red-100');
            setDisabled(false);
        })
    };

    return (
        <div className='w-full p-2'>
            {/* <div className='my-1'>
                <InputTextTitle type='text' name='email' placeholder='Ingresa el correo electrónico del contacto principal' title='Correo electrónico'/>
            </div> */}
            <div className='my-1'>
                <InputTextTitle type='text' name='name' placeholder='Razón social' title='Razón social' border='border-gray-400' value={name} foo={ (evt) => { setName(evt.target.value) } }/>
            </div>
            <div className='my-1'>
                <InputTextTitle type='text' name='comercialname' placeholder='Nombre comercial' title='Nombre comercial' border='border-gray-400' value={comercialname} foo={(evt) => { setComercialName(evt.target.value) }}/>
            </div>
            <div className='my-1'>
                <TextAreaTitle type='text' name='address' placeholder='Dirección' title='Dirección' border='border-gray-400' value={address} foo={ (evt) => { setAddress(evt.target.value) } }/>
            </div>
            <div className='my-1'>
                <TextAreaTitle type='text' name='description' placeholder='Descripción' title='Descripción' border='border-gray-400' value={description} foo={ (evt) => { setDescription(evt.target.value) } }/>
            </div>
            <div className='my-1'>
                <InputTextTitle type='text' name='link' placeholder='Link de tu página web' title='Link de tu página web' border='border-gray-400' value={link} foo={ (evt) => { setLink(evt.target.value) } }/>
            </div>
            <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
            <div className='my-2'>
                <Button1 text='Actualizar' foo={update} disabled={disabled}/>
            </div>
        </div>
    )
}

export default UpdateProfileOrg;