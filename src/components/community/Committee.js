import React, { useEffect, useState } from 'react';
import CommunityServices from '../../services/community/CommunityServices';
import Loading from '../Loading';
import Title from '../Title';

const Committee = ({ tok }) => {
    const [committee, setCommittee] = useState(false);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        CommunityServices.getCommittee(tok)
        .then(res => {
            setCommittee(res.data.committee);
            setLoading(false);
        })
        .catch(e => {
            console.error(e);
        });
    }, []); // eslint-disable-line react-hooks/exhaustive-deps

    return (
        <div className='w-full p-3 text-sm'>
            <p className='mb-3'>
                Para nosotros es muy importante seguir en contacto con la Comunidad <em>alumni</em> a través de un Comité que los represente dentro de ExM. Es por eso que creamos desde el 2015 el Comité <em>alumni</em> ExM, el cual tiene como propósito mantener a los <em>alumni</em> conectados y continuar con el vínculo que los une a Enseña por México.
            </p>
            <p className='my-3'>
                <strong>¿Qué es el Comité <em>alumni</em>?</strong> Grupo voluntario representativo de todas las generaciones de ExM que Conectar, proyectar y motivar a las diferentes comunidades de <em>alumni</em> de Enseña por México
            </p>
            <p className='my-3'>
                <strong>Visión 2025</strong> Para el año 2025, la Comunidad <em>alumni</em> de Enseña por México tendrá representación de todas las generaciones y líneas de investigación, promoviendo las iniciativas <em>alumni</em> con la red nacional y regional y logrando un impacto sistémico en la educación de México.
            </p>
            <p className='my-3'>
                <strong>Misión:</strong> Conectar, proyectar y motivar a las diferentes comunidades de <em>alumni</em> de Enseña por México a través de eventos, espacios y grupos donde se promueva la comunicación activa y el fortalecimiento de la identidad del cambio sistémico.
            </p>
            <div className='my-3'>
                <p>¿Qué hace el Comité <em>alumni</em>?</p>
                <ul className='lg:mx-8 list-disc'>
                    <li>Conoce las Iniciativas <em>alumni</em> de Enseña por México.</li>
                    <li>Propicia que las y los <em>alumni</em> de diferentes generaciones se conozcan.</li>
                    <li>Alienta a las y los <em>alumni</em> a mantenerse conectados desde sus áreas de expertise.</li>
                    <li>Genera estrategias para que las y los <em>alumni</em> sigan en constante comunicación y conexión con la comunidad.</li>
                    <li>Genera identidad y pertenencia para seguir liderando en los tres ejes de Enseña por México: Políticas Públicas, Liderazgo Educativo e Innovación Social.</li>
                    <li>El Comité se reúne al menos una vez al mes.</li>
                    <li>Alentar y promover las iniciativas <em>alumni</em>.</li>
                </ul>
                <div className='my-2 mx-8'>Puedes escribir al Comité al correo: comite.alumni@ensenapormexico.org</div>
            </div>
            <Title title='Miembros del comité'/>
            
                {loading ? 
                    <section className='w-full h-64 mx-auto'>
                        <Loading/>
                    </section>
                :
                    <section className='w-full grid grid-cols-3 gap-2 mt-2'>
                    {committee.map((c, i) => {
                        return <article key={i} className='p-3 bg-gray-200 font-semibold text-blue-exm2 texm-sm grid grid-cols-6 items-center content-center'>
                            <div className='col-span-2'>
                            <div className='rounded-full h-16 w-16 overflow-hidden'>
                                <img alt={ `Profile ${ c.name }` } src={ `${process.env.REACT_APP_BASE_URL}/media/directory/${ c.img ? c.img : 'generic_alumni.png' }` } className="h-full w-full object-cover"/>
                            </div>
                            </div>
                            <p className='col-span-4'>{ `${ c.name } ${ c.lastname }` }</p>
                        </article>
                    })}
                    </section>
                }   
            

        </div>
    )
}

export default Committee;