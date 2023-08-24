import React, { useState } from 'react';
import InputTextTitle from '../../inputs/InputTextTitle';
import TextAreaTitle from '../../inputs/TextAreaTitle';
import SelectTitle from '../../inputs/SelectTitle';
import Button1 from '../../buttons/Button1';
import BtnCloseModal from '../../buttons/BtnCloseModal';

const AddOrUpdateEntrepreneurship = ({ tok, data, type, stages, users, setEntrepreneurships, closeModal, CommunityServices }) => {
    const [message, setMessage] = useState(false);
    const [classes, setClasses] = useState(false);
    const [disabled, setDisabled] = useState(false);

    const [alumni, setAlumni] = useState(type === 'Edit' ? data.alumni : '');
    const [name, setName] = useState(type === 'Edit' ? data.entre : '');
    const [year, setYear] = useState(type === 'Edit' ? data.year : '');
    const [stage, setStage] = useState(type === 'Edit' ? data.stagenum : '');
    const [product, setProduct] = useState(type === 'Edit' ? data.product : '');
    const [description, setDescription] = useState(type === 'Edit' ? data.description : '');
    const [whoisitfor, setWhoisitfor] = useState(type === 'Edit' ? data.whoisitfor : '');
    const [territory, setTerritory] = useState(type === 'Edit' ? data.territory : '');
    const [source, setSource] = useState(type === 'Edit' ? data.source : '');
    const [problemdetected, setProblemdetected] = useState(type === 'Edit' ? data.problemdetected : '');
    const [futurevision, setFuturevision] = useState(type === 'Edit' ? data.futurevision : '');

    const store = () => {
        // setDisabled(true);
        let entre = {e:data.id, type, alumni, name, year, stage, product, description, whoisitfor, territory, source, problemdetected, futurevision};
        CommunityServices.addOrUpdateEntrepreneurship(tok, entre)
        .then(res => {
          if(res.data.status === 1){
              setEntrepreneurships(res.data.entrepreneurships);
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
    };

    return (
      <div className='p-2 '>
        <div className='grid grid-cols-1 lg:grid-cols-2 gap-1 mb-2'>
            <SelectTitle name='user' title={<em>Alumni</em>} data={users} extraclasses='my-1' border='border-gray-400' value={ alumni } foo={ (evt) => setAlumni(evt.target.value) }/>
            <InputTextTitle name='name' title='Nombre del emprendimiento' placeholder='Nombre del emprendimiento' extraclasses='my-1' border='border-gray-400' value={name} foo={ (evt) => { setName(evt.target.value) } }/>
            <InputTextTitle name='year' title='Año de inicio' placeholder='Año de inicio' extraclasses='my-1' border='border-gray-400' value={year} foo={ (evt) => { setYear(evt.target.value) } }/>
            <SelectTitle name='stage' title='Etapa se encuentra actualmente' data={stages} extraclasses='my-1' border='border-gray-400' value={ stage } foo={ (evt) => setStage(evt.target.value) }/>
        </div>    
        <div className='grid grid-cols-1 lg:grid-cols-2 gap-1'>
            <TextAreaTitle name='product' title='Producto o servicio que ofrece' placeholder='Producto o servicio que ofrece' maxlength={500} extraclasses='my-1' border='border-gray-400' value={product} foo={ (evt) => { setProduct(evt.target.value) } }/>
            <TextAreaTitle name='description' title='Descripción' placeholder='Descripción' maxlength={500} extraclasses='my-1' border='border-gray-400' value={description} foo={ (evt) => { setDescription(evt.target.value) } }/>
            <TextAreaTitle name='whoisitfor' title='Población a la que está dirigido' placeholder='Población a la que está dirigido' maxlength={500} extraclasses='my-1' border='border-gray-400' value={whoisitfor} foo={ (evt) => { setWhoisitfor(evt.target.value) } }/>
            <TextAreaTitle name='territory' title='Territorio de cobertura' placeholder='Territorio de cobertura' maxlength={250} extraclasses='my-1' border='border-gray-400' value={territory} foo={ (evt) => { setTerritory(evt.target.value) } }/>
            <TextAreaTitle name='source' title='¿De dónde surge?' placeholder='¿De dónde surge?' maxlength={500} extraclasses='my-1' border='border-gray-400' value={source} foo={ (evt) => { setSource(evt.target.value) } }/>
            <TextAreaTitle name='problemdetected' title='¿Cuál es la problemática o necesidad que atiende el emprendimiento?' placeholder='¿Cuál es la problemática o necesidad que atiende el emprendimiento?' maxlength={500} extraclasses='my-1' border='border-gray-400' value={problemdetected} foo={ (evt) => { setProblemdetected(evt.target.value) } }/>
            <TextAreaTitle name='futurevision' title='Visión a futuro' placeholder='Visión a futuro' maxlength={500} extraclasses='my-1' border='border-gray-400' value={futurevision} foo={ (evt) => { setFuturevision(evt.target.value) } }/>
        </div>

        <div className={ `${ message ? `w-full font-semibold p-1 text-center rounded-sm border-2 my-1 ${classes}` : '' }` }>{message}</div>
        <div className='w-full flex flex-nowrap justify-end items-center content-center mt-3'>
            <div className='w-full lg:w-1/2 grid grid-cols-2 gap-2'>
                <BtnCloseModal/>
                <Button1 foo={ store } text='Eliminar' disabled={ disabled }/>
            </div>
        </div>

      </div>
    )
}

export default AddOrUpdateEntrepreneurship;