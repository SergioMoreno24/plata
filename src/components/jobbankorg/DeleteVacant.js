import React, { useState } from 'react';
import Button1 from '../buttons/Button1';
import BtOrgServices from '../../services/bt/BtOrgServices';

const DeleteVacant = ({tok, vacant, setVacants}) => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);
    const deleteV = () => {
        setDisabled(true);
        setMessage(false);
        setClasses(false);
        let data = {vacant:vacant.idV};
        BtOrgServices.deleteVacant(tok, data)
        .then(res => {
            console.log(res.data);
            if(res.data.status === 1){
                setMessage(res.data.message);
                setClasses('border-green-800 text-green-800 bg-green-100');
                setVacants(res.data.vacants);
                setTimeout(() => {
                    setMessage(false);
                    setClasses(false);
                }, 1500);
            }
            else{
                setMessage(res.data.message);
                setClasses('border-red-800 text-red-800 bg-red-100');
                setDisabled(false);
                setTimeout(() => {
                    setMessage(false);
                    setClasses(false);
                }, 1500);
            }
        })
        .catch(e => {
            console.error(e);
            setMessage('Ocurrió un error, inténtalo más tarde');
            setClasses('border-red-800 text-red-800 bg-red-100');
            setDisabled(false);
            setTimeout(() => {
                setMessage(false);
                setClasses(false);
            }, 1500);
        })
    };

    return (
    <div className='w-full p-2'>
        <p className='p-2'>¿Quieres desactivar la vacante { vacant.charge }?</p>

        <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
        <div className='my-2'>
            <Button1 text='Desactivar vacante' disabled={disabled} foo={() => { deleteV() }}/>
        </div>
    </div>
    )
}

export default DeleteVacant;