import React, { createContext } from 'react';
import Cookies from 'universal-cookie';

export const cookiesContext = createContext();
const { Provider } = cookiesContext;

const CookiesContext = ({ children }) => {
    const cookies = new Cookies();

    const setCookies = (usertype, tok) => {
        cookies.set('usertype_platav2', usertype, { path: '/', maxAge : 604800, sameSite : 'strict' });
        cookies.set('tok_platav2', tok, { path: '/', maxAge : 604800, sameSite : 'strict' });
    }

    const getCookies = () => {
        return cookies.getAll();
    };

    const areThereCookies = () => {
        return cookies.get('tok_platav2') ? true : false;
    };

    const removeCookies = () => {
        cookies.remove('usertype_platav2', { path: '/' });
        cookies.remove('tok_platav2', { path: '/' });
        return;
    }


    return (
        <Provider value={ { setCookies, areThereCookies, getCookies, removeCookies } }>
            { children }
        </Provider>
    )
}

export default CookiesContext;