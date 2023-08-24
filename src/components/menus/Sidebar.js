import React from 'react';
import { NavLink } from 'react-router-dom';

const Sidebar = ({ list, view, screen }) => {
  return (
    <div className='col-span-1 lg:min-h-screen p-2'>
        <ul className='w-full text-blue-exm3 font-semibold bg-gray-200 rounded-xl overflow-hidden text-sm'>
            { list.map(l => {
                return <li key={ l.id } className={`w-full py-3 px-4 hover:bg-gray-300 cursor-pointer ${ screen === l.link ? 'font-black border-b-2 border-blue-exm2 bg-gray-300' : '' }`}>
                <NavLink to={`${process.env.REACT_APP_HOMEPAGE}${view}/${ l.link }`} className='block grid grid-cols-6 items-center content-center'>
                    <div className='col-span-1 text-lg'>{ l.icon }</div>
                    <div className='col-span-5' >{ l.text }</div>
                </NavLink>
                </li>
            }) }
        </ul>
    </div>
  )
}

export default Sidebar;