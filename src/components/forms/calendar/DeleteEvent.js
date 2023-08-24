import React, {useState} from 'react';
import Button1 from '../../buttons/Button1';
import BtnCloseModal from '../../buttons/BtnCloseModal';
import CommunityServices from '../../../services/community/CommunityServices';

const DeleteEvent = ({ tok, data, closeModal }) => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);

    const deleteE = () => {
        // setDisabled(true);
        // CommunityServices.deleteEntrepreneurship(tok, {e:data.id})
        // .then(res => {
        //     console.log(res.data);
        //     if(res.data.status === 1){
        //         setEntrepreneurships(res.data.entrepreneurships);
        //         setClasses('border-green-800 text-green-800 bg-green-100');
        //         setMessage(res.data.message);
        //         setTimeout(() => {
        //             closeModal();
        //         }, 2000);
        //     }
        //     else{
        //         setDisabled(false);
        //         setClasses('border-red-800 text-red-800 bg-red-100');
        //         setMessage(res.data.message);
        //     }
        // })
        // .catch(e => {
        //     setDisabled(false);
        //     console.error(e);
        //     setClasses('border-red-800 text-red-800 bg-red-100');
        //     setMessage('Ocurrió un error, inténtalo más tarde');
        // })
    };
    
    return (
        <div className='w-full p-2'>
            <div className='col-span-3'>
                <p className='text-lg'>¿Quieres eliminar el evento <span className='font-semibold text-blue-exm2 '>{data.title}</span>?</p>
            </div>

            <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
            <div className='w-full flex flex-nowrap justify-end items-center content-center mt-3'>
                <div className='w-full lg:w-1/2 grid grid-cols-2 gap-2'>
                    <BtnCloseModal/>
                    <Button1 foo={ deleteE } text='Eliminar' disabled={disabled }/>
                </div>
            </div>

        </div>
    )
}

export default DeleteEvent;