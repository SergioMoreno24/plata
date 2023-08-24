import React from 'react';
import LogoTeach from '../../images/tfa-logo.png';

const Teach4All = () => {
    return (
        <div className='w-full mx-auto rounded-md'>
            <div className='p-2 lg:p-8 text-sm'>
                <div className='w-full lg:w-3/4 mx-auto'>
                    <img alt='Teach 4 all' src={ LogoTeach } className='w-full h-full object-cover'/>
                </div>
                
                <div className='p-2 mt-3'>
                    <p>
                    Ser <em>alumni</em> de Enseña por México significa también ser <a href='https://vimeo.com/369642100' rel='nofollow noreferrer' className='font-semibold underline'>miembro de la red internacional de Teach for All</a>, lo que conlleva muchos beneficios. 
                    A través de la <a href='https://teachforall.org/network-teachers-alumni' rel='noreferrer nofollow' className='font-semibold underline'>página web de Teach for All</a> para participantes y alumni, puedes acceder a todas las oportunidades y además, conocer a las <a href='https://teachforall.org/communities' rel='noreferrer nofollow' className='font-semibold underline'>comunidades</a> que existen para conectar con otras/os compañeras/os de la red.
                    <br/><br/>
                    Asimismo, suscribiéndote al boletín mensual <a href='https://teachforall.org/subscribe-to-connect' rel='noreferrer nofollow' className='font-semibold underline'>Connect</a> 
                    puedes estar al tanto de todas las <a href='https://teachforall.org/nta-opportunities' rel='noreferrer nofollow' className='font-semibold underline'>oportunidades internacionales</a> 
                    y recursos.
                    </p>
                </div>
            </div>
        </div>
    )
}

export default Teach4All;