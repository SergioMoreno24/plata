import React, { useState } from 'react';

const Select = ({ name, complementText, data, value, foo }) => {
    const [focus, setFocus] = useState(0);
    return (
        <div className={`w-full px-1 rounded-sm border border-gray-200 bg-white text-sm ${ focus === 1 ? 'ring-2 border-blue-exm2' : ''}`}>
            <select name={name} id={name} className={`w-full p-1 focus:border-none focus:outline-none`} value={value} onFocus={ () => {setFocus(1)} } onBlur={ () => {setFocus(0)} } onChange={ foo }>
                <option value='0'>Selecciona { complementText }</option>
                { data ? 
                    data.map(d => {
                        return <option key={ d.id } value={d.id}>{ d.value }</option>
                    })
                    :
                    <></>
                }
            </select>
        </div>
    )
}

export default Select;