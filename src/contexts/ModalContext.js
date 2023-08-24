import React, { useState, createContext } from 'react';

export const modalContext = createContext();
const { Provider } = modalContext;

const ModalContext = ({ children }) => {
    const [component, setComponent] = useState(false);
    const [title, setTitle] = useState('');
    const [width, setWidth] = useState(false);
    const [isOpen, setIsOpen] = useState(false);

    const closeModal = () => {
        setIsOpen(false);
    };

    const openModal = (param, title, width) => {
        setComponent(param);
        setTitle(title);
        setWidth(width);
        setIsOpen(true);
    };

    return (
        <Provider value={ { isOpen, closeModal, openModal, component, setComponent, title, width } }>
            { children }
        </Provider>
    )
}

export default ModalContext;