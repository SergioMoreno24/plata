import React from 'react';

const ButtonAdd = ({ foo, text, disabled }) => {
    return (
      <button onClick={foo} className={`w-full rounded-sm p-1 border-2 border-green-600 bg-white text-green-600 font-semibold hover:bg-green-600 hover:text-white ${disabled ? 'opacity-50' : ''}`} disabled={ disabled }>{ text }</button>
    )
}

export default ButtonAdd;