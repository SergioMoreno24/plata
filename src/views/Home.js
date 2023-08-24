import React from 'react';
import imgHome from '../images/img-home.png';
import iconDirectory from '../images/icons/icon-directory.png';
import iconBT from '../images/icons/icon-bt.png';
import iconOportunities from '../images/icons/icon-oportunities.png';
import iconLink from '../images/icons/icon-link.png';
import iconNews from '../images/icons/icon-news.png';
import { Link } from 'react-router-dom';
import {HiMailOpen} from 'react-icons/hi';
import { IconContext } from 'react-icons';

const Home = () => {
    const links = [
        {id:1, img: iconDirectory, text: <span>Directorio <em>Alumni</em></span>, link: 'comunidad' },
        //{id:2, img: iconBT, text: <span>Bolsa de trabajo</span>, link: 'bolsa-trabajo' },
        {id:3, img: iconOportunities, text: <span>Oportunidades de desarrollo</span>, link: 'oportunidades' },
        {id:4, img: iconLink, text: <span>Opciones para conectarse</span>, link: 'vinculate' },
        {id:5, img: iconNews, text: <span>Noticias</span>, link: 'noticias' },
    ]
    return (
        <div className='w-full pb-6'>
            <section className='w-full'>
                <img alt='Home' src={ imgHome }/>
            </section>
            <section className='my-3 text-center text-sm'>
                <h2 className='font-semibold'>¡Estamos muy emocionados de compartir contigo "Mi Travesía Alumni"!</h2>
                <p>En esta plataforma podrás encontrar lo que tenemos que ofrecerte como Alumni en un solo lugar. Aquí encontrarás:</p>

                <div className='w-full lg:w-3/4 mx-auto flex flex-wrap justify-around gap-2 my-3'>
                    {links.map(l => {
                        return <Link key={l.id} to={ `${process.env.REACT_APP_HOMEPAGE}${ l.link }` } className='p-2 rounded-md w-1/3 lg:w-1/6 grid grid-cols-1 justify-center items-center content-center hover:bg-blue-200'>
                            <img alt={ l.text } src={ l.img } className='mx-auto w-12 h-12 lg:w-14 lg:h-14'/>
                            <p className='text-xs mt-3 text-blue-exm3 font-semibold'>{l.text}</p>
                        </Link>
                    })}
                </div>

                <p>Te invitamos a explorarla y a sacar el mayor provecho posible.</p>
                <p>¡Te damos la bienvenida a tu travesía <em>Alumni!</em></p>
            </section>

            <section className='w-full lg:w-3/4 mx-auto grid grid-cols-6 lg:grid-cols-7 mb-3'>
                <div className='col-span-1 lg:flex lg:justify-center lg:items-center lg:content-center hidden'> <IconContext.Provider value={{ className:"text-4xl text-blue-exm"}}><HiMailOpen/></IconContext.Provider></div>
                <div className='text-xs text-center p-2 rounded-sm col-span-6 text-white bg-blue-exm'>
                    Si tienes cualquier duda, comentario o sugerencia con respecto a esta plataforma, puedes mandar un correo a Margaux a margaux@ensenapormexico.org o alumni@ensenapormexico.org
                </div>
            </section>
        </div>
    )
    }

export default Home;