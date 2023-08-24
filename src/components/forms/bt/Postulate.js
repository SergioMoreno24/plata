import React, { useState } from 'react';
import Button1 from '../../buttons/Button1';
import InputTextTitle from '../../inputs/InputTextTitle';
import BtServices from '../../../services/bt/BtServices';

const Postulate = ({tok, vacant, org, reqdocs, pdf, docs, setVacants}) => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);

    const storeP = () =>{
        setDisabled(true);
        setClasses(false);
        setMessage(false);
        let data = new FormData();
        data.append('vacant', vacant);
        data.append('org', org);
        

        if(reqdocs){
            data.append('docs', true);
            let inputs = document.getElementsByClassName('docs');
            for(let i = 0; i < inputs.length; i++){
                let input = inputs[i].lastChild;
                // console.log(input);
                if(!input.value){
                    setDisabled(false);
                    setClasses('border-red-800 text-red-800 bg-red-100');
                    setMessage('Por favor adjunta los documentos necesarios para la vacante');
                    return;
                }
                else{
                    data.append(input.name, input.files[0]);
                }
            }
        }
        else{
            data.append('docs', false);
        }
        BtServices.storePostulation(tok, data)
        .then(res => {
            if(res.data.status === 1){
                setClasses('border-green-800 text-green-800 bg-green-100');
                setMessage(res.data.message);
                setVacants(res.data.vacants);
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
            setMessage('Ocurrió un error, inténtalo más tarde');
        })
    };

    return (
        <div className='p-1 '>
            {
            pdf ?
                <div className='bg-purple-100 text-purple-exm font-semibold p-2 text-center border-2 border-purple-exm rounded-sm my-3'>Por favor, envía tu postulación y documentos al correo que aparece en el PDF.</div>
            :
            <div className='p-2 mb-2'>
                {reqdocs ?
                <div className='font-semibold'>
                    <p className='text-blue-exm2 text-base'>Para postular a esta vacante, necesitas los siguientes documentos:</p>
                    <div>
                        {reqdocs.substring(1, reqdocs.length - 1).split('|').map(d => {
                            return <InputTextTitle key={d} type='file' extraclasses='my-1 docs' name={docs[d][1]} title={docs[d][0]} placeholder={docs[d][0]}/>
                        })}
                    </div>
                </div>
                :
                <div className='w-full font-semibold text-center rounded-sm'>¿Quieres postular a esta vacante?</div>
                }
                <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
                <Button1 text='Postular' foo={storeP} disabled={disabled}/>
            </div>
            }
        </div>
    )
}

export default Postulate;