import React, { useState } from 'react';

const InputTextTitle = ({ type, name, placeholder, title, value, foo, extraclasses, border }) => {
    const [focus, setFocus] = useState(0);
    return (
        <div className={`w-full p-1 rounded-sm border ${ border ? border : 'border-gray-200' } bg-white text-sm ${ extraclasses ? extraclasses : '' } ${ focus === 1 ? 'ring-2 border-blue-exm2' : ''}`}>
            <span className='text-blue-exm3 font-semibold'>{ title }</span>
            <input type={type} name={name} id={name} placeholder={placeholder} value={value} onChange={ foo } className={`w-full p-1 focus:border-none focus:outline-none`} onFocus={ () => {setFocus(1)} } onBlur={ () => {setFocus(0)} }/>
        </div>
    )
}

export default InputTextTitle;