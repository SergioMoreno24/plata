import React from 'react';
import { IconContext } from 'react-icons';
import {FaFacebookF, FaInstagram,FaTwitter,FaYoutube,FaSpotify} from 'react-icons/fa';

const Footer = () => {
    const links = [
        { id:1, icon: <FaFacebookF/>, link: 'https://www.facebook.com/EnsenaporMexico/?ref=bookmarks' },
        { id:3, icon: <FaTwitter/>, link: 'https://twitter.com/ensenapormexico?lang=es' },
        { id:2, icon: <FaInstagram/>, link: 'https://www.instagram.com/ensenapormexico/?hl=eshttps://www.instagram.com/ensenapormexico/?hl=es' },
        { id:5, icon: <FaYoutube/>, link: 'https://www.youtube.com/channel/UC-UhuwrrFvCptgcfzGbed2A?view_as=subscriber' },
        { id:6, icon: <FaSpotify/>, link: 'https://alumniexm.org/' },
    ];
    return (
        <div className='w-full bg-gray-900 text-gray-50 py-10'>
            <div className='w-full lg:w-1/2 mx-auto flex flex-wrap justify-around gap-2 mt-3'>
                {links.map(l => {
                    return <a key={l.id} href={ l.link } rel='nofollow noreferer' className='p-4 rounded-full hover:bg-blue-200'>
                        <IconContext.Provider value={{ className:'text-2xl' }}>{l.icon}</IconContext.Provider>
                    </a>
                })}

            </div>
            <h3 className='text-center my-3 font-semibold'>Enseña por México 2023®</h3>
        </div>
    )
}

export default Footer;