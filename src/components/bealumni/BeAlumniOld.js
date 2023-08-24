import React from 'react';
import beAlumni1 from '../../images/ser-alumni-1.png';
import beAlumni2 from '../../images/ser-alumni-2.png';
import beAlumni3 from '../../images/ser-alumni-3.png';
import ExmSearch from '../../images/img-exm-search.png';

const BeAlumni = () => {
    return (
        <div className='w-full lg:w-4/5 mx-auto p-2'>
            <div className='my-3'>
                <div className='w-full text-blue-exm text-center font-black text-lg'>Visión <em>alumni</em> ExM</div>
                <p className='text-sm'>A lo largo de su vida, las y los alumni están comprometidos con la visión de ExM y activamente involucrados con nuestro movimiento. De forma colectiva, siguen contribuyendo a la transformación sistémica en México, haciendo un efecto multiplicador en nuestro impacto.</p>
                <img alt='ExM busca' src={ ExmSearch } className='w-full lg:w-3/4 mx-auto my-3'/>
            </div>
            <div className='my-3'>
                <div className='w-full text-blue-exm text-center font-black text-lg'>¿Qué significa ser <em>alumni</em>?</div>
                <p className='text-sm'>Como alumni continúas, después de tus dos años de programa, con las transformaciones de nuestra teoría de desarrollo del liderazgo:</p>
                <div className='w-full grid grid-cols-1 lg:grid-cols-3 gap-2 my-3'>
                    <div className='text-sm'>
                        <div className='overflow-hidden rounded-full w-36 h-36 mx-auto'><img alt='Alumni 1' src={ beAlumni1 } className='w-full h-full object-cover'/></div>
                        <p className='p-2'>1. Eres un/a profesionista consciente de tí mismo/a, de tus capacidades y necesidades, eres proactiva/o, self-driven y tomas participación activa sobre tu propio futuro.</p>
                    </div>
                    <div className='text-sm'>
                        <div className='overflow-hidden rounded-full w-36 h-36 mx-auto'><img alt='Alumni 2' src={ beAlumni2 } className='w-full h-full object-cover'/></div>
                        <p className='p-2'>2. Te desempeñas de manera sobresaliente y eres capaz de ocupar posiciones estratégicas en organizaciones, gobierno o dentro de tu comunidad, aportando una perspectiva amplia y sistémica para la solución de problemas.</p>
                    </div>
                    <div className='text-sm'>
                        <div className='overflow-hidden rounded-full w-36 h-36 mx-auto'><img alt='Alumni 3' src={ beAlumni3 } className='w-full h-full object-cover'/></div>
                        <p className='p-2'>3. Colaboras activamente en la construcción de una red amplia y diversa que aporta al desarrollo personal y profesional de cada uno de sus miembros. Asimismo, te involucras y propicias los espacios de convivencia que quieres con la comunidad ExM.</p>
                    </div>
                </div>
            </div>
            <div className='my-3 p-2'>
                <div className='w-full text-blue-exm text-center font-black text-lg'>Como <em>alumni</em>, te puedes beneficiar del soporte institucional de parte de Enseña por México:</div>
                {/* <p className='text-sm'>Como alumni continúas, después de tus dos años de programa, con las transformaciones de nuestra teoría de desarrollo del liderazgo:</p> */}
                <ul className='text-sm'>
                    <li className='my-1'><span className='font-semibold text-lg'>·</span> Te ofrecemos diversos apoyos profesionales en cualquier etapa de tu carrera para que ocupes roles y traces trayectorias profesionales alineadas con la misión de ExM.</li>
                    <li className='my-1'><span className='font-semibold text-lg'>·</span> Te ayudamos a desarrollarte continuamente como agente de cambio, participando en oportunidades de aprendizaje de toda la red alineadas con nuestra misión.</li>
                    <li className='my-1'><span className='font-semibold text-lg'>·</span> Potenciamos tu contribución individual y colectiva a los esfuerzos de cambio locales centrados en nuestra visión a largo plazo: “ser un movimiento amplio, diverso e incluyente a favor de la justicia social para que todas las niñas, niños y jóvenes en México tengan acceso a una educación que les garantice desarrollar su máximo potencial sin importar su origen.”</li>
                </ul>
            </div>
        </div>
    )
}

export default BeAlumni;