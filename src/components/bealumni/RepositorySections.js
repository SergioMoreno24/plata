import React from 'react';
import {AiFillCaretDown} from 'react-icons/ai';
const RepositorySections = ({ id, title, bgcolor, textcolor, text, list }) => {
    const interests = list.filter(d => { return d.type === '1' });
    const programs = list.filter(d => { return d.type === '2' });
    const toggleSections = (id) => {
        let sections = document.getElementsByClassName('section-r');
        for(let s = 0; s < sections.length; s++){
            sections[s].classList.add('hidden');
        }
        document.getElementById(id).classList.remove('hidden');
    };
    return (
        <div className={`w-full p-2 text-sm mt-3`}>
            <div className={`px-4 py-1 ${ bgcolor } font-semibold text-white flex items-center content-center justify-between cursor-pointer`} onClick={() => {toggleSections(id)}}>
                <span>{title}</span>
                <AiFillCaretDown/>
            </div>
            <div id={id} className='hidden section-r'>
                <div className='my-3 text-left p-3'>
                    {text}
                </div>
                <div className='my-2 p-2 grid grid-cols-2 gap-2'>
                    <div>
                        <p className={`${ textcolor } font-semibold text-base`}>Documentos de interés</p>
                        <div className='grid grid-cols-2 gap-2 p-2'>
                            {interests.map(e => {
                                return <a key={e.id} className={`${bgcolor} p-3 flex justify-center content-center items-center text-white`} rel='nofollow noreferrer' target='_blank' href={e.link}>
                                    {e.name}
                                </a>
                            })}
                        </div>
                    </div>
                    <div>
                        <p className={`${ textcolor } font-semibold text-base`}>Programas para <em>alumni</em></p>
                        <div className='grid grid-cols-2 gap-2 p-2'>
                            {programs.map(e => {
                                return <a key={e.id} className={`${bgcolor} p-3 flex justify-center content-center items-center text-white`} rel='nofollow noreferrer' target='_blank' href={e.link}>
                                    {e.name}
                                </a>
                            })}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default RepositorySections;