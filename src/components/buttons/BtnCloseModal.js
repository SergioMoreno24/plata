import React, { useContext } from 'react';
import { modalContext } from '../../contexts/ModalContext';

const BtnCloseModal = () => {
    const mContext = useContext(modalContext);
    const { closeModal } = mContext;
    return (
        <button id='btn-close' onClick={ closeModal } className='w-full p-1 bg-gray-600 hover:bg-gray-800 text-white rounded-sm'>Cancelar</button>
    )
}

export default BtnCloseModal;