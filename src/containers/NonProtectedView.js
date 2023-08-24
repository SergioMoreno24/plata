import React, { useContext, useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { cookiesContext } from '../contexts/CookiesContext';

const NonProtectedView = ({ children }) => {
    const context = useContext(cookiesContext);
    const { areThereCookies, getCookies } = context;
    let navigate = useNavigate();
    const [component, setComponent] = useState(false);
    
    useEffect(() => {
        if(areThereCookies()){
            setComponent(<span></span>);
            navigate(getCookies()['usertype_platav2'] === '3' ? `${ process.env.REACT_APP_HOMEPAGE }bt-org/perfil` : `${ process.env.REACT_APP_HOMEPAGE }inicio`, { replace: true });
        }
        else{
            setComponent(children);
            
        }
    }, [children]); // eslint-disable-line react-hooks/exhaustive-deps

    return (
        <div>{ component }</div>
    )
}

export default NonProtectedView;