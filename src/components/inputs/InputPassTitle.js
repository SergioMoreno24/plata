import React, { useState } from 'react';
import { AiOutlineEyeInvisible, AiOutlineEye } from 'react-icons/ai';

const InputPassTitle = ({ name, placeholder, title }) => {
    const [focus, setFocus] = useState(0);
    const [type, setType] = useState('password');
    const toggleVisiblePass = () => {
        setType(type === 'password' ? 'text' : 'password');
    };
    return (
        <div className={`w-full p-1 rounded-sm bg-white border border-gray-200 text-xs ${ focus === 1 ? 'ring-2 border-blue-exm2' : ''}`}>
            <span className='text-blue-exm3 font-semibold p-1'>{ title }</span>
            <div className='grid grid-cols-10 gap-1 w-full rounded-sm bg-white'>
                <div className='col-span-9'>
                    <input type={ type } name={name} id={name} className='w-full p-1 rounded-sm focus:outline-none' placeholder={placeholder} onFocus={ () => {setFocus(1)} } onBlur={ () => {setFocus(0)} }/>
                </div>
                <div className='col-span-1 flex items-center justify-center cursor-pointer hover:bg-gray-200' id='eye' onClick={ toggleVisiblePass }>
                    <div>{ type === 'password' ? <AiOutlineEyeInvisible/> : <AiOutlineEye/>}</div>
                </div>
            </div>
        </div>
    )
}

export default InputPassTitle;