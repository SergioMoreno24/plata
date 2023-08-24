import React, { useState } from 'react';

const TextAreaTitle = ({ name, placeholder, title, value, foo, extraclasses, border, maxlength }) => {
    const [focus, setFocus] = useState(0);
    return (
        <div className={`w-full p-1 rounded-sm border ${ border ? border : 'border-gray-200' } bg-white text-sm ${ focus === 1 ? 'ring-2 border-blue-exm2' : ''} ${extraclasses ? extraclasses : ''}`}>
            <span className='text-blue-exm3 font-semibold'>{ title }</span>
            <textarea name={name} id={name} placeholder={placeholder} maxLength={maxlength ? maxlength : 250} className={`w-full p-1 focus:border-none focus:outline-none`} onFocus={ () => {setFocus(1)} } onBlur={ () => {setFocus(0)} } value={value} onChange={foo}></textarea>
        </div>
    )
}

export default TextAreaTitle;