import React from 'react';
import Title from '../components/Title';
import Facebook from '../images/facebook.png';
import LinkedIn from '../images/linkedin.png';
import Instagram from '../images/instagram.png';

const Block = ({link, logo, title, text}) => {
    return <a className='block rounded-3xl bg-gray-200 p-2 grid grid-cols-4 gap-2' target='_blank' rel='noreferrer nofollow' href={ link }>
        <div className='w-full text-center col-span-1 flex justify-center content-center items-center'>
            <div className='rounded-full w-24 h-24 bg-gray-100 mx-auto overflow-hidden flex items-center content-center justify-center'><img alt='Facebook' className='w-20 h-20 mx-auto rounded-full' src={ logo }/></div>
        </div>
        <div className='flex justify-center content-center items-center p-1 col-span-3'>
            <div>
                <p className='text-blue-exm2 text-base font-semibold py-1'>{title}</p>
                {text}
            </div>
        </div>
    </a>
}

const NewsA = () => {
    return (
        <div className='w-full lg:w-5/6 mx-auto'>
            <Title title={ <span>MANTENTE AL TANTO EN NUESTRAS REDES SOCIALES</span> } />
            <div className='w-full mx-auto lg:w-3/4 grid grid-cols-2 gap-6 mt-4 text-sm my-2'>
                <Block link='https://www.facebook.com/groups/comunidadalumniexm' logo={Facebook} title='Comunidadalumniexm' text='Es tu grupo de la comunidad ¡Úsalo! En él podemos compartir noticias, oportunidades, convocatorias y dudas, así como promover tus proyectos e iniciativas o pedir ayuda.'/>
                <Block link='https://www.facebook.com/ComiteAlumniExM' logo={Facebook} title={<span>Comité <em>alumni</em></span>} text={<span>Sigue la página de Facebook del Comité <em>alumni</em> para estar al tanto de todas las actividades y eventos que organizan.</span>}/>
                <Block link='https://www.linkedin.com/in/alumni-exm/' logo={LinkedIn} title={<span>LinkedIn</span>} text={<span>Conéctate con el perfil <em>alumni</em> de ExM en LinkedIn, donde te compartiremos vacantes y te apoyaremos con nuestra red de contactos para hacer networking.</span>}/>
                <Block link='https://www.instagram.com/alumniexm/' logo={Instagram} title={<span>Instagram</span>} text={<span>Sigue nuestra cuenta de <em>alumni</em> ExM en instagram para conocer anécdotas y datos curiosos de la comunidad <em>alumni</em>. Etiquétanos en tus actividades con otras/os <em>alumni</em>.</span>}/>
            </div>
        </div>
    )
}

export default NewsA;