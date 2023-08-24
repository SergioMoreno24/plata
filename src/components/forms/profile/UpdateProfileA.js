import React, { useState } from 'react';
import Button1 from '../../buttons/Button1';
import ProfileServices from '../../../services/users/ProfileServices';
import InputTextTitle from '../../inputs/InputTextTitle';
import TextAreaTitle from '../../inputs/TextAreaTitle';

const UpdateProfileA = ({ profile, tok, setProfile }) => {
    const [profileU, setProfileU] = useState(profile);
    const [disabled, setDisabled] = useState(false);
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);

    const changeProfile = (key, value) => {
        let profileC = JSON.parse(JSON.stringify(profileU));
        profileC[key] = value;
        setProfileU(profileC);
    };  

    const updateProfile = () => {
        setDisabled(true);
        console.log(profileU);
        ProfileServices.storeProfile(tok, profileU)
        .then((res) => {
            setDisabled(false);
            console.log(res.data);
            if(res.data.status === 1){
                setClasses('border-green-800 text-green-800 bg-green-100');
                setMessage(res.data.message);
                setProfile(profileU);
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
          <InputTextTitle type='text' name='name' placeholder='Nombre(s)' title='Nombre(s)' extraclasses='my-1' value={ profileU.name ? profileU.name : '' } foo={ (evt) => {changeProfile('name', evt.target.value)} }/>
          <InputTextTitle type='text' name='lastname' placeholder='Apellido(s)' title='Apellido(s)' extraclasses='my-1' value={ profileU.lastname ? profileU.lastname : '' } foo={ (evt) => { changeProfile('lastname', evt.target.value) } }/>
          <InputTextTitle type='text' name='personalemail' placeholder='Correo electrónico personal' title='Correo electrónico personal' extraclasses='my-1' value={ profileU.personalemail ? profileU.personalemail : '' } foo={ (evt) => { changeProfile('personalemail', evt.target.value) } }/>
          <InputTextTitle type='text' name='phone' placeholder='Teléfono' title='Teléfono' extraclasses='my-1' value={ profileU.phone ? profileU.phone : '' } foo={ (evt) => { changeProfile('phone', evt.target.value) } }/>
          <InputTextTitle type='text' name='university' placeholder='Universidad' title='Universidad' extraclasses='my-1' value={ profileU.university ? profileU.university : '' } foo={ (evt) => { changeProfile('university', evt.target.value) } }/>
          <InputTextTitle type='text' name='career' placeholder='Carrera' title='Carrera' extraclasses='my-1' value={ profileU.career ? profileU.career : '' } foo={ (evt) => { changeProfile('career', evt.target.value) } }/>
          <InputTextTitle type='text' name='organization' placeholder='Organización en la que trabajas' title='Organización en la que trabajas' extraclasses='my-1' value={ profileU.organization ? profileU.organization : '' } foo={ (evt) => { changeProfile('organization', evt.target.value) } }/>
          <InputTextTitle type='text' name='rol' placeholder='Puesto actual' title='Puesto actual' extraclasses='my-1' value={ profileU.rol ? profileU.rol : '' } foo={ (evt) => { changeProfile('rol', evt.target.value) } }/>

          <TextAreaTitle name='languages' placeholder='Idiomas' title='Idiomas' value={ profileU.languages ? profileU.languages : '' } foo={ (evt) => {changeProfile('languages', evt.target.value)} } extraclasses='my-1'/>
          <TextAreaTitle name='competences' placeholder='Competencias, habilidades, etc.' title='Competencias, habilidades, etc.' value={ profileU.competences ? profileU.competences : '' } foo={ (evt) => {changeProfile('competences', evt.target.value)} } extraclasses='my-1'/>
          <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
          <div><Button1 foo={ updateProfile } text={ 'Actualizar' } disabled={disabled} /></div>
      </div>
    )
}

export default UpdateProfileA;