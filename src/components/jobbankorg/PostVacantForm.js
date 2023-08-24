import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import Button1 from '../buttons/Button1';
import InputTextTitle from '../inputs/InputTextTitle';
import SelectTitle from '../inputs/SelectTitle';
import TextAreaTitle from '../inputs/TextAreaTitle';
import BtOrgServices from '../../services/bt/BtOrgServices';

const PostVacantForm = ({tok, type, states, jobtimes, docs}) => {
    // console.log(docs);
    const [showname1, setShowname1] = useState(true);
    const [auth1, setAuth1] = useState(true);
    const [reqdocs, setReqdocs] = useState(docs);
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);
    const navigate = useNavigate();
    const changeDocs = (i) => {
        let docsCopy = JSON.parse(JSON.stringify(reqdocs));
        docsCopy[i].selected = docsCopy[i].selected === 1 ? 0 : 1;
        setReqdocs(docsCopy);
    };

    const postVacant = () => {
        setDisabled(true);
        setMessage(false);
        setClasses(false);
        let data = new FormData();
        let inputs = document.querySelector('#post-vacant').querySelectorAll('input, select, textarea');
        let selecteddocs = '|';
        reqdocs.forEach(d => { if(d.selected === 1) { selecteddocs += d.id + '|' } });
        
        for(let i = 0; i < inputs.length; i++){
            data.append(inputs[i].name, inputs[i].value);
        }
        data.append('authsocialmedia', auth1);
        data.append('reqdocs', selecteddocs);
        data.append('showname', showname1);
        data.append('confidentialname', showname1 ? '' : document.getElementById('confidentialname').value);
        data.append('pdf', type === 1 ? document.getElementById('pdf').files[0] : '');
        data.append('type', type);
        
        BtOrgServices.storeVacant(tok, data)
        .then(res => {
            console.log(res.data);
            if(res.data.status === 1){
                setMessage(res.data.message);
                setClasses('border-green-800 text-green-800 bg-green-100');
                setTimeout(() => {
                    setMessage(false);
                    setClasses(false);
                    navigate( `${process.env.REACT_APP_HOMEPAGE}bt-org/vacantes`);
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
    <div>
    {type === 1 ?
        <div className='my-2 w-full p-2' id='post-vacant'>
            <InputTextTitle type='text' name='charge' title='Cargo o puesto de la vacante' placeholder='Cargo o puesto de la vacante' extraclasses='my-2' border='border-gray-400'/> 
            <SelectTitle name='state' title='Selecciona un estado' data={states} border='border-gray-400' extraclasses='my-2'/>
            <div className='grid grid-cols-2 gap-2 my-2'>
                <InputTextTitle type='date' name='initialdate' title='Fecha de apertura de la vacante' placeholder='Fecha de apertura de la vacante' border='border-gray-400'/>
                <InputTextTitle type='date' name='closedate' title='Fecha de cierre de la vacante' placeholder='Fecha de cierre de la vacante' border='border-gray-400'/>
            </div>

            <hr className='my-4 border border-gray-400'/>
            <div className={`w-full p-1 rounded-sm border border-gray-400 bg-white text-sm my-2`}>
                <span className='text-blue-exm3 font-semibold'>¿Quieres que aparezca el nombre de la organización al publicar esta vacante?</span>
                <div className='grid grid-cols-2 gap-2 my-2'>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ showname1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setShowname1(true); } }><span>Sí, está bien</span></div>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ !showname1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setShowname1(false); } }><span>No, utilizar un nombre diferente</span></div>
                </div>
                { showname1 ?
                <></>
                :
                <InputTextTitle type='text' name='confidentialname' title='Nombre que aparecerá en la vacante' placeholder='Nombre que aparecerá en la vacante' extraclasses='my-2' border='border-gray-400'/>
                }
                
            </div>
            <div className={`w-full p-1 rounded-sm border border-gray-400 bg-white text-sm my-2`}>
                <span className='text-blue-exm3 font-semibold'>Autorizo a ExM a publicar esta vacante en sus redes sociales</span>
                <div className='grid grid-cols-2 gap-2 my-2'>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ auth1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setAuth1(true); } }><span>Si autorizo</span></div>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ !auth1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setAuth1(false); } }><span>No autorizo</span></div>
                </div>
            </div>
            <hr className='my-4 border border-gray-400'/>

            <div>
            <InputTextTitle type='file' name='pdf' title='Archivo PDF de la vacante' placeholder='Archivo PDF de la vacante' extraclasses='my-2' border='border-gray-400'/>
            </div>

            <div className='my-2 text-gray-600 text-sm'>
            Nota: Para registrar una oferta laboral, se requiere un sueldo mínimo mensual de $5,000.00 para medio tiempo y de $12,000.00 para tiempo completo.
            </div>
        </div>
    :
    <div className='my-2 w-full p-2' id='post-vacant'>
        <InputTextTitle type='text' name='charge' title='Cargo o puesto de la vacante' placeholder='Cargo o puesto de la vacante' extraclasses='my-2' border='border-gray-400'/> 
        <SelectTitle name='state' title='Selecciona un estado' data={states} border='border-gray-400' extraclasses='my-2'/>
        <SelectTitle name='time' title='Selecciona tiempo' data={jobtimes} border='border-gray-400' extraclasses='my-2'/>
        <TextAreaTitle name='description' title='Descripción de la vacante' extraclasses='my-2' placeholder='Descripción de la vacante' border='border-gray-400'/>
        <TextAreaTitle name='responsabilities' title='Responsabilidades' extraclasses='my-2' placeholder='Responsabilidades' border='border-gray-400'/>
        <TextAreaTitle name='requirements' title='Perfil requerido' extraclasses='my-2' placeholder='Perfil requerido' border='border-gray-400'/>
        <TextAreaTitle name='experience' title='Experiencia requerida' extraclasses='my-2' placeholder='Experiencia requerida' border='border-gray-400'/>
        <TextAreaTitle name='benefits' title='Beneficios de la vacante (sueldo, prestaciones, horario, etc.)' extraclasses='mt-2' placeholder='Beneficios de la vacante (sueldo, prestaciones, horario, etc.)' border='border-gray-400'/>
        <div className='mb-2 text-gray-600 text-sm'>
            Nota: Para registrar una oferta laboral, se requiere un sueldo mínimo mensual de $5,000.00 para medio tiempo y de $12,000.00 para tiempo completo.
        </div>

        <InputTextTitle type='text' name='availability' title='Inicio de labores (inmediato, alguna fecha en particular)' placeholder='Inicio de labores (inmediato, alguna fecha en particular)' extraclasses='my-2' border='border-gray-400'/> 
        <h2 className='text-blue-exm3 font-semibold text-center'>¿Qué documentos necesitas?</h2>
            <div className='my-2 grid grid-cols-2 lg:grid-cols-3 gap-2'>
                {reqdocs.map((d, i) => {
                    return <div className={`border border-gray-400 text-center p-2 rounded-sm text-sm ${ d.selected === 1 ? 'bg-blue-exm3 text-white' : 'bg-white text-blue-exm3' } hover:bg-blue-exm3 hover:text-white cursor-pointer`} key={d.id} onClick={ () => { changeDocs(i) } }>{d.value}</div>
                })}
        </div>

        <div className='grid grid-cols-2 gap-2 my-2'>
            <InputTextTitle type='date' name='initialdate' title='Fecha de apertura de la vacante' placeholder='Fecha de apertura de la vacante' border='border-gray-400' extraclasses='my-2'/>
            <InputTextTitle type='date' name='closedate' title='Fecha de cierre de la vacante' placeholder='Fecha de cierre de la vacante' border='border-gray-400' extraclasses='my-2'/>
        </div>
        <hr className='my-4 border border-gray-400'/>
            <div className={`w-full p-1 rounded-sm border border-gray-400 bg-white text-sm my-2`}>
                <span className='text-blue-exm3 font-semibold'>¿Quieres que aparezca el nombre de la organización al publicar esta vacante?</span>
                <div className='grid grid-cols-2 gap-2 my-2'>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ showname1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setShowname1(true); } }><span>Sí, está bien</span></div>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ !showname1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setShowname1(false); } }><span>No, utilizar un nombre diferente</span></div>
                </div>
                { showname1 ?
                <></>
                :
                <InputTextTitle type='text' name='confidentialname' title='Nombre que aparecerá en la vacante' placeholder='Nombre que aparecerá en la vacante' extraclasses='my-2' border='border-gray-400'/>
                }
                
            </div>
            <div className={`w-full p-1 rounded-sm border border-gray-400 bg-white text-sm my-2`}>
                <span className='text-blue-exm3 font-semibold'>Autorizo a ExM a publicar esta vacante en sus redes sociales</span>
                <div className='grid grid-cols-2 gap-2 my-2'>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ auth1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setAuth1(true); } }><span>Si autorizo</span></div>
                    <div className={`w-full border text-center border-gray-400 text-sm p-2 rounded-sm cursor-pointer hover:bg-blue-exm3 hover:text-white ${ !auth1 ? 'bg-blue-exm3 text-white' : 'bg-white text-gray-900' }`} onClick={ () => { setAuth1(false); } }><span>No autorizo</span></div>
                </div>
            </div>
            <hr className='my-4 border border-gray-400'/>

    </div>
    }

    <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
    <div className='mt-8 mb-2'>
        <Button1 text='Publicar vacante' disabled={disabled} foo={() => { postVacant() }}/>
    </div>
    </div>
    )
}

export default PostVacantForm;