import React from 'react';
import imgLogin from '../images/img-login.png';
import imgLoginSm from '../images/img-login-sm.png';
import LoginForm from '../components/forms/login/LoginForm';

const Index = () => {
    return (
        <div className='w-full h-screen md:relative md:overflow-hidden'>
            <LoginForm/>
            <img src={ imgLogin } alt='Login' className='hidden md:block md:w-full md:h-full md:object-fill'/>
            <img src={ imgLoginSm } alt='Login' className='md:hidden w-full h-2/5 object-fill'/>
        </div>
    )
}

export default Index;