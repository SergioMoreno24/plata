import React, { useContext } from 'react';
import ReactDom from 'react-dom';
import { modalContext } from '../../contexts/ModalContext';

const Modal = () => {
    const context = useContext(modalContext);
    const { isOpen, closeModal, component, title, width } = context;
    if(!isOpen) return null;
    return ReactDom.createPortal(
        <div>
            <div id='fondo-modal' className='fixed inset-0 z-10 bg-gray-900 opacity-70'></div>
            <div id='modal' className={`fixed bg-white z-20 overflow-auto rounded-md max-h-screen w-4/5 ${ width } border border-blue-exm2 top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2`}>
                <div id='modal-header' className='flex justify-between items-center content-center px-3 bg-blue-exm2'>
                    <span className='text-white text-sm'>{ title }</span>
                    <button onClick={ closeModal } className='text-3xl text-white font-bold'>
                        &times;
                    </button>
                </div>
                <div id='modal-content' className='overflow-auto'>
                    <div className='w-full h-full'>{ component }</div>
                </div>
            </div>
        </div>,
        document.getElementById('portal')
    );
}

export default Modal;