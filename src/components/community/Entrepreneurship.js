import React from 'react';
import CommunityServices from '../../services/community/CommunityServices';
import Empty from '../Empty';
import Loading from '../Loading';

const Entrepreneurship = ({ data }) => {
    return (
        <div className='w-full grid grid-cols-4 p-2 text-sm gap-4'>
            <div className='h-full flex items-center content-center justify-center col-span-1 flex-wrap'>
                <div className='rounded-full h-32 w-32 overflow-hidden'>
                    <img alt={ `Emprendimiento ${ data.name }` } src={ `${process.env.REACT_APP_BASE_URL}/media/directory/${ data.img ? data.img : 'generic_alumni.png' }` } className="h-full w-full object-cover"/>
                </div>
                <p className='w-full text-blue-exm2 font-semibold text-center my-2 text-lg'>{ `${ data.name }` }</p>
            </div>
            <div className='col-span-3'>
                <h2 className='font-semibold text-blue-exm2 text-lg'>{data.entre}</h2>
                <h2 className='font-semibold text-purple-exm text-base text-sm'>¿Qué es?</h2>
                <p className='text-sm'>{data.description ? data.description : 'No hay información'}</p>
                <h2 className='font-semibold text-purple-exm text-base text-sm'>¿Para quién?</h2>
                <p className='text-sm'>{data.whoisitfor}</p>
                <h2 className='font-semibold text-purple-exm text-base text-sm'>¿En dónde?</h2>
                <p className='text-sm'>{data.territory ? data.territory : 'No hay información'}</p>
            </div>
        </div>
    )
}

export default Entrepreneurship;