import React, { useEffect, useState } from 'react';
import CommunityServices from '../../services/community/CommunityServices';
import Empty from '../Empty';
import Loading from '../Loading';
import Entrepreneurship from './Entrepreneurship';
import DeleteEntrepreneurship from '../forms/community/DeleteEntrepreneurship';
import AddOrUpdateEntrepreneurship from '../forms/community/AddOrUpdateEntrepreneurship';
import {MdEdit} from 'react-icons/md';
import {TiDelete} from 'react-icons/ti';
import Button1 from '../buttons/Button1';

const Entrepreneurships = ({ tok, usertype, openModal, closeModal }) => {
    const [entrepreneurships, setEntrepreneurships] = useState(false);
    const [stages, setStages] = useState(false);
    const [users, setUsers] = useState(false);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        CommunityServices.getEntrepreneurships(tok)
        .then(res => {
            setEntrepreneurships(res.data.entrepreneurships);
            setStages(res.data.stages);
            setUsers(res.data.users);
            setLoading(false);
        })
        .catch(e => {
            setLoading(false);
            console.error(e);
        });
    }, []); // eslint-disable-line react-hooks/exhaustive-deps

    return (
        <div className='w-full mx-auto p-3 text-sm'>
            {loading ? 
                <section className='w-full h-64 mx-auto'>
                    <Loading/>
                </section>
            :
                <div className='w-full mt-2'>
                    { usertype === '1' ? <Button1 text='Agregar emprendimiento' disabled={false} foo={ () => { openModal(<AddOrUpdateEntrepreneurship tok={tok} data={false} type='Add' stages={stages} users={users} setEntrepreneurships={setEntrepreneurships} closeModal={closeModal} CommunityServices={CommunityServices}/>, <span>Agregar emprendimiento</span>, 'lg:w-1/2') } } /> : <></> }
                    {entrepreneurships && entrepreneurships.length > 0 ?
                    <section className='w-full grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-2 mt-3'>
                    {entrepreneurships.map((a, i) => {
                        return <article key={i} className={`p-2 bg-gray-200 font-semibold text-blue-exm2 texm-sm grid ${usertype === '1' ? 'grid-cols-7' : 'grid-cols-6' } items-center content-center cursor-pointer`}>
                        <div className='col-span-2'>
                            <div className='rounded-full h-16 w-16 overflow-hidden'>
                                <img alt={ `Emprendimiento ${ a.name }` } src={ `${process.env.REACT_APP_BASE_URL}/media/directory/${ a.img ? a.img : 'generic_alumni.png' }` } className="h-full w-full object-cover"/>
                            </div>
                        </div>
                        <div className='col-span-4 flex flex-wrap content-around' onClick={ () => { openModal(<Entrepreneurship data={a}/>, <></>, 'lg:w-1/2') } }>
                            <p className='w-full'>{ `${ a.name }` }</p>
                            <p className='text-purple-exm text-base w-full'>{ `${ a.entre }` }</p>
                        </div>
                        { usertype === '1' ? 
                        <div className='w-full flex flex-wrap justify-center items-center content-center'>
                            <button className='w-6 h-6 p-1 font-semibold text-blue-exm2 bg-transparent border-2 border-blue-exm2 m-2 flex items-center content-center justify-center hover:bg-blue-exm2 hover:text-white' onClick={ () => { openModal(<AddOrUpdateEntrepreneurship tok={tok} data={a} type='Edit' stages={stages} users={users} setEntrepreneurships={setEntrepreneurships} closeModal={closeModal} CommunityServices={CommunityServices}/>, <span>Editar emprendimiento</span>, 'lg:w-1/2') } }>{<MdEdit/>}</button>
                            <button className='w-6 h-6 p-1 font-semibold text-red-800 bg-transparent border-2 border-red-800 m-2 flex items-center content-center justify-center hover:bg-red-800 hover:text-white' onClick={ () => { openModal(<DeleteEntrepreneurship tok={tok} data={a} setEntrepreneurships={setEntrepreneurships} closeModal={closeModal}/>, <span>Eliminar emprendimiento</span>, 'lg:w-1/2') } }>{<TiDelete/>}</button>
                        </div> 
                        : 
                        <></> }
                    </article>
                    })}
                    </section>
                    :
                    <div className='my-3'>
                        <Empty text='No hay resultados'/>
                    </div>}

                </div>
            }   
        </div>
    )
}

export default Entrepreneurships;