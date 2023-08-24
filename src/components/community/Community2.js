import React from 'react';
import imgIS from '../../images/img-is.png';
import imgLE from '../../images/img-le.png';
import imgPP from '../../images/img-pp.png';
import imgOthers from '../../images/img-others.png';
import {FaCircle} from 'react-icons/fa';

const BlockCommunity = ({ img, title, color, links }) => {
    return <section className='grid grid-cols-5 my-5 border-b-2 border-gray-200 py-3'>
        <article className='col-span-1 flex justify-center items-center content-center'>
            <img alt='IS' src={ img }/>
        </article>
        <article className='col-span-4 flex flex-wrap justify-start content-center items-center'>
            <h2 className={`font-black ${ color }`}>{title}</h2>
            {
                links.map(l => {
                    return <div key={l.id} className='w-full flex flex-nowrap justify-start items-center content-center text-sm my-2'>
                        <div className='mx-2'><FaCircle/></div>
                        <a rel='nofollow noreferrer' target='_blank' href={ l.link }>{ l.text }</a>
                    </div>
                })
            }
        </article>
    </section>
}

const Community2 = () => {
    const linksIS = [ {id:1, link:'https://www.facebook.com/groups/623541208436161/', text:'Comunidad del emprendimiento e innovación social - Teach For All Iberoamérica'}, { id:2, link:'https://chat.whatsapp.com/ErZmZo63vrIFxrNUcybkU0', text:<span>Grupo whatsapp de <em>Alumni</em> emprendedores de ExM</span> } ];
    const linksLE = [ {id:1, link:'https://chat.whatsapp.com/KnoOteyFbTmGFTy2Z56Fbb', text:<span>Grupo whatsapp de <em>Alumni</em> docentes de ExM</span>}, { id:2, link:'https://chat.whatsapp.com/F6Z0sXJywEHLJt2GBxZT0z', text:<span>Grupo whatsapp de <em>Alumni</em> directores de escuela de ExM</span> }, {id:3, link:'https://chat.whatsapp.com/EBZOEQ8O2d9C1ZYmm0Hjf6', text:<span>Grupo de Investigación Educativa</span>} ];
    const linksPP = [ {id:1, link:'https://www.facebook.com/GrupoPoliticasPublicasExM/', text:<span>Grupo de Políticas Públicas - ExM</span>}, { id:2, link:'https://chat.whatsapp.com/JUArfyHhs3C5OZwlTeVWyz', text:<span>Grupo whatsapp de políticas públicas ExM</span> } ];
    const linksCR = [{id:1, link:'https://chat.whatsapp.com/BejUe5X3tDTJjYZQIF4CEw', text:<span>Grupo whatsapp de <em>alumni</em> en CDMX</span>},
    {id:2, link:'https://chat.whatsapp.com/FaY2zjTzADk0bKEQHBMVP1', text:<span>Grupo whatsapp de <em>alumni</em> en Edomex</span>},
    {id:3, link:'https://chat.whatsapp.com/J90v4Q8cDdq6Q8zMrTIrLt', text:<span>Grupo whatsapp de <em>alumni</em> en Puebla</span>},
    {id:4, link:'https://chat.whatsapp.com/IGx4AipGobbLSPrbt6XhAP', text:<span>Grupo whatsapp de <em>alumni</em> Jalisco</span>},
    {id:5, link:'https://chat.whatsapp.com/KXOaoAbP5voKgYmHHm9kZh', text:<span>Grupo whatsapp de <em>alumni</em> en Baja California Sur</span>},
    {id:6, link:'https://chat.whatsapp.com/Bs9cJFRjAY09dKexOwRnE8', text:<span>Grupo whatsapp de <em>alumni</em> en Nuevo León y Coahuila</span>},
    {id:7, link:'https://chat.whatsapp.com/IAt8k8CxdCAHxjdFPVAoti', text:<span>Grupo whatsapp de <em>alumni</em> en Yucatán</span>},

    {id:8, link:'https://chat.whatsapp.com/Jn8RV20iorf4Y1PV3GSTNT', text:<span>Grupo whatsapp de <em>alumni</em> en Querétaro</span>},
    {id:9, link:'https://chat.whatsapp.com/CXmx3VDRaKZFfMlLRuwqvW?fbclid=IwAR3L_SmlEw6fNFUGMNwos3dsqWj3MhwTcPHRjSlIevlpDAmJQaD246--aPo', text:<span>Grupo whatsapp de <em>alumni</em> en Guanajuato</span>},
    {id:10, link:'https://chat.whatsapp.com/IGx4AipGobbLSPrbt6XhAP', text:<span>Grupo whatsapp de <em>alumni</em> en Guadalajara.</span>},
];
    const linksLT = [{id:1, link:'https://chat.whatsapp.com/H48wBnjw9k8DlbUi6y5Nvo', text:<span>Comunidad de Conciencia Social</span>},{id:2, link:'https://www.facebook.com/groups/584866289560187', text:<span>Comunidad de Educación Sexual Integral</span>},{id:3, link:'https://docs.google.com/forms/d/e/1FAIpQLSf5-_GuJlwTKVjhEFqTFhpZV4jrsrmmfVruWXSkS74cPljVUA/viewform', text:<span>Comunidad de Práctica en Coaching Transformacional</span>},{id:4, link:'https://cuenteach.com/', text:<span>CuenTeach</span>},{id:5, link:'https://docs.google.com/forms/d/e/1FAIpQLSeB9NoBw0aWe-I4vZcejmz7TZRqtlz1_7S8N_mpNVdUcc4uzA/viewform', text:<span>JugaRED, Comunidad de Primera Infancia LatAm</span>},{id:6, link:'https://www.facebook.com/labcomunidad', text:<span>Laboratorio de Conexión</span>},{id:7, link:'https://gmail.us2.list-manage.com/subscribe?u=94cf810e8f2076c06bd8ec055&id=31205dd575', text:<span>Red Latinoamericana de Desarrollo Profesional Docente</span>},{id:8, link:'https://drive.google.com/file/d/189wu2Z6EFDW2yMFDoLftoUcsCsqhsGL7/view', text:<span>Tejidos Femeninos</span>}];
    return (
        <div className='w-full lg:w-5/6 mx-auto p-3'>
            <h2 className='w-full lg:w-1/2 font-semibold mx-auto border-b border-gray-600 text-center'>Ejes estratégicos</h2>
            <BlockCommunity img={ imgIS } title='INNOVACION SOCIAL' color='text-yellow-exm' links={ linksIS }/>
            <BlockCommunity img={ imgLE } title='LIDERAZGO EDUCATIVO' color='text-purple-exm' links={ linksLE }/>
            <BlockCommunity img={ imgPP } title='INCIDENCIA PÚBLICA' color='text-blue-exm3' links={ linksPP }/>
            <BlockCommunity img={ imgOthers } title='COMUNIDADES REGIONALES' color='text-blue-exm' links={ linksCR }/>
            <BlockCommunity img={ imgOthers } title='COMUNIDADES DE APRENDIZAJE A NIVEL LATAM' color='text-blue-exm' links={ linksLT }/>
        </div>
        
    )
}

export default Community2;