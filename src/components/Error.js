import React from 'react';

const Error = ({ text }) => {
    return (
        <div className='w-full h-full flex items-center justify-center content-center rounded-sm border-2 border-red-700 text-red-700 bg-red-100 font-semibold text-center py-1'>
            { text }
        </div>
    )
}

export default Error;