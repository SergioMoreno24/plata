import React, { useState } from 'react';

const SelectTitle = ({ name, title, data, extraclasses, border, value, foo }) => {
    const [focus, setFocus] = useState(0);
    return (
        <div className={`w-full p-1 rounded-sm border ${ border ? border : 'border-gray-200' } bg-white text-sm ${ extraclasses ? extraclasses : '' } ${ focus === 1 ? 'ring-2 border-blue-exm2' : ''}`}>
            <span className='text-blue-exm3 font-semibold'>{ title }</span>
            <select name={name} id={name} className={`w-full p-1 focus:border-none focus:outline-none`} onFocus={ () => {setFocus(1)} } onBlur={ () => {setFocus(0)} } value={value} onChange={foo}>
                <option value='0'>Selecciona</option>
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

export default SelectTitle;