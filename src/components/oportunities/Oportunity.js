import React, { useState } from 'react';

const Oportunity = ({ o }) => {
    const [flag, setFlag] = useState(true);
    return (
        <div className='w-full rounded-sm bg-gray-200 p-2 my-2'>
            <a href={ o.link } rel='nofollow noreferrer' target='_blank' className='text-md font-semibold text-blue-exm2'>{o.name}</a>
            <p className='p-1 text-xs'>{ flag && o.description.length > 150 ? `${o.description.substring(0, 150)}...` : o.description }</p>
            <div className='w-full flex justify-center content-center items-center my-2 px-2 grid grid-cols-2 gap-2'>
                <button className='rounded-full w-full text-center bg-blue-exm2 px-3 py-1 font-semibold text-white hover:bg-blue-600' onClick={ () => { setFlag(!flag) } }>{ flag ? 'Ver más' : 'Ver menos' }</button>
                <a rel='nofollow noreferrer' target='_blank' href={o.link} className='rounded-full w-full text-center bg-gray-800 px-3 py-1 font-semibold text-white hover:bg-gray-700'>Ir a la oportunidad</a>
            </div>
        </div>
    )
}

export default Oportunity;