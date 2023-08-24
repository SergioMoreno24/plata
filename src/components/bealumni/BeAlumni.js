import React from 'react';
import beAlumni1 from '../../images/ser-alumni-1.png';
import beAlumni2 from '../../images/ser-alumni-2.png';
import beAlumni3 from '../../images/ser-alumni-3.png';

const BeAlumni = () => {
    return (
        <div className='w-full lg:w-4/5 mx-auto p-2 text-sm'>
            <div className='my-3'>
                <div className='w-full text-purple-exm text-center font-black text-2xl'>¡Ya eres <em>alumni</em>!</div>
                <p className='my-2'>
                    Cuando tu compromiso de dos años concluye, ExM continúa proporcionando oportunidades, eventos, recursos, conexiones para el <span className='font-semibold'>desarrollo de tu liderazgo</span>. Recibirás apoyo en tus objetivos y en la búsqueda de nuestra misión compartida, sin importar la trayectoria profesional que elijas. Este documento te ayudará a desarrollar una <span className='font-semibold'>comprensión clara de tu camino como alumni</span>.
                </p>

                <div className='my-2 text-justify'>
                    <p>El objetivo general del área <em>alumni</em> de ExM es <span className='font-semibold'>consolidar el movimiento de <em>alumni</em> agentes de cambio como estrategas y líderes colectivos comprometidos con reducir la inequidad educativa</span>. El área <em>alumni</em> ejerce un rol fundamental hacia la realización de la visión de Enseña por México, a través de: </p>
                    <ul className='my-1'>
                        <li className='ml-3'><span className='font-semibold text-lg mx-2'>·</span>Conectarte con la red <em>alumni</em>, para que colaboren con y entre la red de Teach For All, Enseña por México y actores clave del sistema, y así generar un impacto colectivo (<span className='font-semibold'>liderazgo colectivo</span>)</li>
                        <li className='ml-3'><span className='font-semibold text-lg mx-2'>·</span>Potenciar tu liderazgo a través de aprendizajes y oportunidades para posicionarte como líder agente de cambio (<span className='font-semibold'>desarrollo profesional</span>).</li>
                        <li className='ml-3'><span className='font-semibold text-lg mx-2'>·</span>Contribuir al desarrollo de tu trayecto profesional en los 3 ejes estratégicos para seguir creciendo y aprendiendo (<span className='font-semibold'>ejes estratégicos</span>).</li>
                    </ul>
                    <p>A través de eso, buscamos <span className='font-semibold'>mantener y reforzar el compromiso</span>  que tienes hacia la equidad educativa.</p>
                </div>

            </div>
            <div className='my-3'>
                <div className='w-full text-blue-exm text-center font-black text-lg'>¿Qué significa ser <em>alumni</em>?</div>
                <p className='text-sm'>Después de tus dos años de programa, te conviertes en <em>alumni</em>:</p>
                <div className='w-full grid grid-cols-1 lg:grid-cols-3 gap-2 my-3'>
                    <div className='text-sm'>
                        <div className='overflow-hidden rounded-full w-36 h-36 mx-auto'><img alt='Alumni 1' src={ beAlumni1 } className='w-full h-full object-cover'/></div>
                        <p className='py-2 px-3 text-justify'>1. Eres un/a profesionista consciente de tí mismo/a, de tus capacidades y necesidades, eres proactivo/a y tomas <span className='font-semibold'>participación activa sobre tu propio futuro</span>.</p>
                    </div>
                    <div className='text-sm'>
                        <div className='overflow-hidden rounded-full w-36 h-36 mx-auto'><img alt='Alumni 2' src={ beAlumni2 } className='w-full h-full object-cover'/></div>
                        <p className='py-2 px-3 text-justify'>2. Te desempeñas poniendo en práctica tu <span className='font-semibold'>liderazgo consciente y colectivo</span>, y eres capaz de ocupar posiciones estratégicas en organizaciones, gobierno o dentro de tu comunidad, aportando una perspectiva amplia y sistémica para la solución de problemas.</p>
                    </div>
                    <div className='text-sm'>
                        <div className='overflow-hidden rounded-full w-36 h-36 mx-auto'><img alt='Alumni 3' src={ beAlumni3 } className='w-full h-full object-cover'/></div>
                        <p className='py-2 px-3 text-justify'>3. <span className='font-semibold'>Colaboras activamente en la consolidación de una red amplia, diversa e incluyente</span> que aporta al desarrollo personal y profesional de cada uno de sus miembros. Asimismo, te involucras y propicias los espacios de convivencia que quieres con la comunidad de ExM y de TFAll.</p>
                    </div>
                </div>

                <p className='my-2'>Como <em>alumni</em>, tienes un <span className='font-semibold text-blue-exm'>perfil</span> que nos ayuda a contribuir a nuestra teoría de cambio.</p>
                <p className='my-2'>Como <em>alumni</em>, Enseña por México busca que sigas:</p>

                <ul className='my-1'>
                    <li className='ml-3'><span className='font-semibold text-lg mx-2'>·</span>Conectado/a y <span className='font-semibold'>comprometido/a</span> con la realidad que conociste durante tus dos años como PEM.</li>
                    <li className='ml-3'><span className='font-semibold text-lg mx-2'>·</span>Liderando los cambios que el país necesita desde múltiples sectores y roles, creando un <span className='font-semibold'>impacto sistémico y sostenible.</span></li>
                    <li className='ml-3'><span className='font-semibold text-lg mx-2'>·</span>Involucrándote en el movimiento de Enseña por México y Teach For All para construir y/o fortalecer las relaciones entre <em>alumni</em>, y fomentar acciones de <span className='font-semibold'>liderazgo colectivo</span>.</li>
                    <li className='ml-3'><span className='font-semibold text-lg mx-2'>·</span>Siendo <span className='font-semibold'>catalizador y mantenedor del cambio</span>, inspirándolo pero no protagizándolo, asegurando que el cambio siga independiente de tu presencia.</li>
                </ul>

            </div>
            <div className='my-3 p-2'>
                <p className='my-2'>Es por eso que creemos que aunque las y los alumni se dediquen a hacer cosas diferentes, continúan sumando en colectivo al alcance de una visión que acciona hacia la <span className='font-semibold'>equidad educativa</span> y la <span className='font-semibold'>justicia social</span>. </p>
                <a rel='noreferrer nofollow' target='_blank' className='block font-semibold text-lg text-center text-blue-exm' href='https://drive.google.com/file/d/1yJiMA1GRQ4xtK4pF370VO5GJtgh7wxVC/view?usp=sharing'>Descubre más del perfil alumni aquí.</a>
            </div>
        </div>
    )
}

export default BeAlumni;