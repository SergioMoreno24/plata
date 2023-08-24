import React, { useState } from 'react';
import Button1 from '../../buttons/Button1';
import ProfileServices from '../../../services/users/ProfileServices';
import InputTextTitle from '../../inputs/InputTextTitle';
import TextAreaTitle from '../../inputs/TextAreaTitle';

const UpdateProfilePhoto = ({ tok, setProfile }) => {
    const [disabled, setDisabled] = useState(false);
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);

    const updateProfile = () => {
        setDisabled(true);
        let data = new FormData();
        data.append('photo', document.getElementById('input-photo').files[0]);
        ProfileServices.changeProfilePhoto(tok, data)
        .then((res) => {
            setDisabled(false);
            console.log(res.data);
            if(res.data.status === 1){
                setClasses('border-green-800 text-green-800 bg-green-100');
                setMessage(res.data.message);
                setProfile(res.data.profile);
            }
            else{
                setClasses('border-red-800 text-red-800 bg-red-100');
                setMessage(res.data.message);
            }
        })
        .catch((e) => {
            setDisabled(false);
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Ocurrió un error, inténtalo más tarde');
            console.error(e);
        })
    };

    return (
      <div className='w-full p-2'>
          <InputTextTitle type='file' name='input-photo' placeholder='Foto de perfil' title='Foto de perfil' extraclasses='my-1'/>
          
          <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
          <div><Button1 foo={ updateProfile } text={ 'Actualizar' } disabled={disabled} /></div>
      </div>
    )
}

export default UpdateProfilePhoto;