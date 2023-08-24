import React, { useState } from 'react';
import { AiOutlineEyeInvisible, AiOutlineEye } from 'react-icons/ai';

const InputPass = ({name, placeholder}) => {
    const [type, setType] = useState('password');
    const toggleVisiblePass = () => {
        setType(type === 'password' ? 'text' : 'password');
    };
    return (
        <div className='grid grid-cols-10 gap-1 w-full rounded-sm border border-gray-200 bg-white'>
            <div className='text-xs col-span-9 focus:outline-none focus:ring focus:border-blue-exm'>
                <input type={ type } name={name} id={name} className='w-full p-1 rounded-sm focus:outline-none focus:ring focus:border-blue-600' placeholder={placeholder}/>
            </div>
            <div className='col-span-1 flex items-center justify-center cursor-pointer hover:bg-gray-200' id='eye' onClick={ toggleVisiblePass }>
                <div>{ type === 'password' ? <AiOutlineEyeInvisible/> : <AiOutlineEye/>}</div>
            </div>
        </div>
    )
}

export default InputPass;