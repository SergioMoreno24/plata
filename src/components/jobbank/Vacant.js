import React from 'react';

const Rowprofile = ({ title, value }) => {
    return <div className='w-full py-2 border-b border-gray-300 grid grid-cols-5 items-center text-sm my-1 border-b border-gray-300'>
        <div className='col-span-1 px-3 font-semibold text-blue-exm2'>{ title }</div>
        <div className='col-span-4 px-3'>{ value }</div>
    </div>;
};

const Vacant = ({vacant, docs}) => {
    return (
        vacant.pdf ?<div className='w-full'>
            <div className='text-xl font-semibold text-blue-exm2 text-center my-3'>{vacant.charge}</div>
                <div className='text-lg font-semibold text-center my-1'>{vacant.state}</div>
                <iframe className='w-full h-screen' src={ `${process.env.REACT_APP_BASE_URL}/media/bt/vacants/${vacant.pdf}` } title={vacant.charge}></iframe>
            </div>
        :
            <div className='w-full'>
                <div className='text-xl font-semibold text-blue-exm2 text-center my-3'>{vacant.charge}</div>
                <div className='text-lg font-semibold text-center my-1'>{vacant.state}</div>
                <div className='text-lg text-center my-1'>{vacant.time}</div>
                <div className='w-full lg:w-3/4 mx-auto'>
                    <Rowprofile title='Descripción' value={vacant.description}/>
                    <Rowprofile title='Responsabilidades' value={vacant.responsabilities}/>
                    <Rowprofile title='Requisitos' value={vacant.requirements}/>
                    <Rowprofile title='Experiencia' value={vacant.experience}/>
                    <Rowprofile title='Disponibilidad' value={vacant.availability}/>
                    <Rowprofile title='Beneficios' value={vacant.benefits}/>
                    <Rowprofile title='Documentos requeridos' value={ vacant.reqdocs.length > 0 ? vacant.reqdocs.substring(1, vacant.reqdocs.length -1 ).split('|').map((d, i) => { return <div key={i} className='w-full'>-  { docs[d][0] }</div> }) : '' }/>
                    <Rowprofile title='Fecha de apertura' value={vacant.initialdate}/>
                    <Rowprofile title='Fecha de cierre' value={vacant.closedate}/>

                </div>
            </div>
    )
}

export default Vacant;