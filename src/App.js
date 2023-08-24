
import React from 'react';
import { BrowserRouter } from 'react-router-dom';
import ModalContext from './contexts/ModalContext';
import CookiesContext from './contexts/CookiesContext';
import Modal from './components/modals/Modal';
import Main from './containers/Main';

const App = () => {
  return (
    <BrowserRouter>
      <CookiesContext>
        <ModalContext>
          <Main/>
          <Modal/>
        </ModalContext>
      </CookiesContext>
    </BrowserRouter>
  );
}

export default App;