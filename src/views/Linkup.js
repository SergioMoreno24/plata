import React from 'react';
import Title from '../components/Title';
import bannerD from '../images/linkup/banner-donate.png';
import bannerW from '../images/linkup/banner-workshop.png';
import bannerV from '../images/linkup/banner-vacant.png';

const Linkup = () => {
    const elements = [
        {id:2, img: bannerD, text:'Dona a Enseña por México aquí', link:'https://www.ensenapormexico.org/dona'},
        {id:3, img: bannerW, text:'Escribe un correo a Margaux con el tema del taller que te gustaría impartir', link:'https://www.ensenapormexico.org/'},
        {id:4, img: bannerV, text:'Si tienes una vacante en tu organización, su área de RRHH puede subir esta oportunidad en la bola de trabajo de ExM aquí', link:'http://localhost:3000/bt/vacantes'},
    ];
    return (
        <div className='w-full lg:w-3/4 mx-auto p-2'>
            <Title title='¿CÓMO VINCULARTE CON EXM?'/>
            <section className='flex flex-wrap justify-evenly gap-1 p-2'>
                {elements.map(e => {
                    return <a key={ e.id } href={ e.link } rel='nofollow noreferrer' target='_blank' className='grid grid-cols-1 p-1 w-3/4 lg:w-1/4 mx-auto'>
                        <img alt={e.text} src={ e.img } className='w-56 h-56 mx-auto'/>
                        <div className='w-full bg-blue-exm text-xs p-2 text-white h-16 flex items-center content-center'>
                            {e.text}
                        </div>
                    </a>
                })}
            </section>
        </div>
    )
}

export default Linkup;