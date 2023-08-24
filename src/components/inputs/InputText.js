import React from 'react';

const InputText = ({type, name, placeholder, extraclasses, value, foo}) => {
    return (
        <input type={type} name={name} id={name} placeholder={placeholder} className={`text-sm w-full p-1 rounded-sm border border-gray-200 focus:outline-none focus:ring focus:border-blue-600 ${ extraclasses ? extraclasses : '' }`} value={value} onChange={foo}/>
    )
}

export default InputText;