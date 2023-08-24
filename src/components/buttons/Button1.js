import React from 'react';

const Button1 = ({ foo, text, disabled }) => {
    return (
      <button onClick={foo} className={`w-full p-1 bg-blue-exm text-white rounded-sm hover:bg-purple-exm ${disabled ? 'opacity-50' : ''}`} disabled={ disabled }>{ text }</button>
    )
}

export default Button1;