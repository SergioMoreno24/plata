import React, { useState } from 'react';
import Select from '../../inputs/Select';
import InputText from '../../inputs/InputText';
import ButtonAdd from '../../buttons/ButtonAdd';
import NewslettersServices from '../../../services/newsletters/NewslettersServices';

const AddNewsLetter = ({ ntype, tok, closeModal, setNews }) => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);
    const months = [
        {id:1, value:'Enero'},
        {id:2, value:'Febrero'},
        {id:3, value:'Marzo'},
        {id:4, value:'Abril'},
        {id:5, value:'Mayo'},
        {id:6, value:'Junio'},
        {id:7, value:'Julio'},
        {id:8, value:'Agosto'},
        {id:9, value:'Septiembre'},
        {id:10, value:'Octubre'},
        {id:11, value:'Noviembre'},
        {id:12, value:'Diciembre'},
    ];

    const years = [
        {id:2022, value:2022},
        {id:2023, value:2023},
    ];

    const checkData = () => {
        let data = {};
        const inputs = document.getElementById('add-news').querySelectorAll('input, select');
        for(let v = 0; v < inputs.length; v++){
            if(inputs[v].value === '' || inputs[v].value === '0')
                return false
            data[inputs[v].name] = inputs[v].value;
        }
        return data;
    };

    const store = () => {
        setDisabled(true);
        let data = checkData();
        data['ntype'] = ntype;
        if(data){
            NewslettersServices.storeNewsletter(tok, ntype, data)
            .then(res => {
                console.log(res.data);
                if(res.data.status === 1){
                    setNews(res.data.newsletters);
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
        else{
            setDisabled(false);
            setClasses('border-red-800 text-red-800 bg-red-100');
            setMessage('Por favor, llena todos los campos');
        }
    };

    return (
        <div className='bg-gray-100 p-2' id='add-news'>
            <div className='my-1'><Select name='month' complementText='un mes' data={ months } foo={ () => { } }/></div>
            <div className='my-1'><Select name='year' complementText='un año' data={ years } foo={ () => { } }/></div>
            <div className='my-1'><InputText type='text' name='link' placeholder='Link'/></div>

            <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
            <div className='w-full flex flex-nowrap justify-end items-center content-center mt-3'>
                <div className='w-full lg:w-1/4'>
                    <ButtonAdd foo={ store } text='Agregar boletín' disabled={disabled}/>
                </div>
            </div>
        </div>
    )
}

export default AddNewsLetter;