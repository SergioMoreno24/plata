import React from 'react';

const Loading = () => {
    return (
        <div className='w-full h-full flex items-center justify-center content-center'>
            <div className='animate-spin duration-75 ease-linear w-12 h-12 mx-auto rounded-full border-8 border-x-purple-exm border-y-transparent'></div>
        </div>
    )
}

export default Loading;