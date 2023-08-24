import React, { useState } from 'react';
import InputTextTitle from '../../inputs/InputTextTitle';
import SelectTitle from '../../inputs/SelectTitle';
import Button1 from '../../buttons/Button1';
import BtnCloseModal from '../../buttons/BtnCloseModal';
import EventsServices from '../../../services/events/EventsServices';

const AddEventForm = ({ closeModal, tok, setEvents }) => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);

    const checkData = () => {
        let data = {};
        const inputs = document.getElementById('addevent').querySelectorAll('input, select');
        for(let v = 0; v < inputs.length; v++){
            if(inputs[v].value === '' || inputs[v].value === '0')
                return false
            data[inputs[v].name] = inputs[v].value;
        }
        return data;
    };


    const storeEvent = () => {
        setDisabled(true);
        let data = checkData();
        if(!data){
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Por favor, llena todos los campos');
            setDisabled(false);
            return;
        }
        else{
            EventsServices.storeEvent(tok, data)
            .then(res => {
                console.log(res.data);
                if(res.data.status === 1){
                    setEvents(res.data.events);
                    setClasses('border-green-800 text-green-800 bg-green-100');
                    setMessage(res.data.message);
                    setTimeout(() => {
                        closeModal();
                    }, 2000);
                }
                else{
                    setDisabled(false);
                    setClasses('border-red-800 text-red-800 bg-red-100');
                    setMessage(res.data.message);
                }
            })
            .catch(e => {
                setDisabled(false);
                console.error(e);
                setClasses('border-red-800 text-red-800 bg-red-100');
                setMessage('Ocurrió un error, inténtalo más tarde');
            })
        }
    };
  return (
        <div className='w-full h-full p-3'>
            <div id='addevent'>
              <div className='my-1'><InputTextTitle name='title' placeholder='Título' title='Título' type='text'/></div>
              <div className='my-1'><InputTextTitle name='date' placeholder='Fecha' title='Fecha' type='date'/></div>
              <div className='my-1'><InputTextTitle name='link' placeholder='Link' title='Link' type='text'/></div>
              <div className='my-1'><SelectTitle name='transformation'  title='Transformación ' data={ [{id:1, value:'Social'},{id:2, value:'Educativa'}, {id:3, value:'Personal'}] }/></div>
            </div>


            <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
            <div className='w-full flex flex-nowrap justify-end items-center content-center mt-3'>
                <div className='w-full lg:w-1/2 grid grid-cols-2 gap-2'>
                    <BtnCloseModal/>
                    <Button1 foo={ storeEvent } text='Agregar' disabled={disabled }/>
                </div>
            </div>
        </div>
  )
}

export default AddEventForm;