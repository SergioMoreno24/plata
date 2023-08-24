import React, { useEffect } from 'react';
import {FaUserEdit} from 'react-icons/fa';
import {TiDelete} from 'react-icons/ti';
const ListUsers = ({users, type}) => {
    useEffect(() => {}, [type]);
    return (
        <table className='w-full'>
            <thead>
                <tr className='bg-blue-exm2 text-white font-semibold'>
                    <th className='p-1 text-center'>Correo</th>
                    <th className='p-1 text-center'>Estatus</th>
                    <th className='p-1 text-center'>Editar</th>
                    <th className='p-1 text-center'>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                {users.map(u => {
                    return <tr key={u.idU} className='hover:bg-gray-100 text-sm border-b-2 border-gray-400'>
                        <td className='py-1'>{u.email}</td>
                        <td className='py-1 text-center'>{u.status === '1' ? 'Activo' : 'Inactivo'}</td>
                        <td className='py-1'><div className='flex items-center content-center justify-center text-blue-exm text-xl cursor-pointer'>{<FaUserEdit/>}</div></td>
                        <td className='py-1'><div className='flex items-center content-center justify-center text-red-700 text-xl cursor-pointer'>{<TiDelete/>}</div></td>
                    </tr>
                })}
            </tbody>
        </table>
    )
}

export default ListUsers;