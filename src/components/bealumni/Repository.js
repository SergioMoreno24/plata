import React, { useEffect, useState } from 'react';
import RepositoryImg from '../../images/repository.png';
import RepositoryServices from '../../services/repository/RepositoryServices';
import RepositorySections from './RepositorySections';
import Loading from '../Loading';
import Error from '../Error';
import Empty from '../Empty';

const Repository = ({tok}) => {
    const [repository, setRepository] = useState(false);
    const [loading, setLoading] = useState(1);

    useEffect(() => {
        RepositoryServices.getRepo(tok)
        .then(res => {
            // console.log(res.data);
            if(res.data.status === 1){
                setRepository(res.data.docs);
                setLoading(0);
            }
            else{
                setLoading(0);
            }
        })
        .catch(e => {
            console.error(e);
            setLoading(0);
        })
    }, []);

    return (
        <div className='w-full p-2 text-center mt-3'>
            {loading ? 
                <section className='w-full h-64 mx-auto'>
                    <Loading/>
                </section>
            :
            <div className='w-full mt-2'>
                <img alt='Repositorio' src={ RepositoryImg }/>

                {repository ?
                <>
                    <RepositorySections id='le' title='LIDERAZGO EDUCATIVO' bgcolor={'bg-purple-exm'} textcolor={'text-purple-exm'} text={<div><p>EXM busca desarrollar habilidades y ofrecer herramientas en innovación e investigación educativa, para responder a los nuevos retos que se presentan en el sector educativo e implementar un cambio significativo en el proceso de enseñanza-aprendizaje.</p><br/><p>Cómo se ve un/a alumni dentro de este eje:</p><ul><li className='mx-3'><span className='font-semibold text-lg'>·</span> Desarrolla habilidades y ofrece herramientas en innovación e investigación educativa.</li><li className='mx-3'><span className='font-semibold text-lg'>·</span> Responde a los nuevos retos que se presentan en el sector educativo e implementa un cambio significativo en el proceso de enseñanza-aprendizaje.</li></ul></div>} list={repository.filter(e => { return e.category === '1' })}/>
                    <RepositorySections id='ip' title='INCIDENCIA PÚBLICA' bgcolor={'bg-blue-exm2'} textcolor={'text-blue-exm'} text={<div><p>Buscamos promover la importancia de incidir en políticas públicas desde la sociedad civil, así como aprovechar los diversos espacios para influir en la discusión y formulación de políticas públicas educativas y de primera infancia en México, con el fin de transformar el sistema educativo.Se busca que las y los alumni se conviertan en líderes educativos del sector público que conozcan la problemática educativa desde la perspectiva de las comunidades de mediana y alta marginación del país.</p><br/><p>Cómo se ve un/a alumni dentro de este eje:</p><ul className='mx-3'><li><span className='font-semibold text-lg'>·</span> Desarrolla las capacidades de liderazgo necesarias para asumir la responsabilidad de actuar en colectivo con sus comunidades para la defensa de los derechos de NNJ y para exigir derechos de forma creativa y significativa.</li><li><span className='font-semibold text-lg'>·</span> Conoce mecanismos de participación ciudadana y las formas en que los distintos sectores inciden en políticas públicas educativas.</li><li><span className='font-semibold text-lg'>·</span> Es capaz de crear, difundir o replicar soluciones sólidas y sostenibles por medio de la construcción de vínculos comunitarios, planeación estratégica e implementación de acciones orientadas al cambio sistémico que esperamos se vea reflejado en las políticas públicas.</li></ul></div>} list={repository.filter(e => { return e.category === '2' })}/>
                    <RepositorySections id='is' title='INNOVACIÓN SOCIAL' bgcolor={'bg-yellow-exm'} textcolor={'text-yellow-exm'} text={<div><p>Muchas/os alumni utilizan sus experiencias en el aula para desarrollar innovaciones sociales. Queremos apoyar a las y los alumni a convertirse en emprendedores sociales. Muchas/os alumni se quedan también en el sector social (ONG, AC, etc.) ya sea como gerentes de proyectos, facilitadores en campo o en el área de desarrollo.</p><br/><p>Cómo se ve un/a alumni dentro de este eje:</p><ul className='mx-3'><li><span className='font-semibold text-lg'>·</span> Se prepara para iniciar su camino como emprendedor social o conocer el sector social. </li><li><span className='font-semibold text-lg'>·</span> Utiliza su 2° año en comunidad como laboratorio: </li><ul className='mx-3'><li><span className='font-semibold text-lg'>·</span> Identifica y articula el problema que hayan elegido para transformarlo en una solución.</li><li><span className='font-semibold text-lg'>·</span> Empieza a planificar el prototipo de la idea que quieran desarrollar.</li><li><span className='font-semibold text-lg'>·</span> Identifica fuentes de financiamiento y estrategias de procuración de fondos.</li></ul></ul></div>} list={repository.filter(e => { return e.category === '1' })}/>
                    <RepositorySections id='dp' title='DESARROLLO PROFESIONAL' bgcolor={'bg-green-exm'} textcolor={'text-green-exm'} text={<p></p>} list={repository.filter(e => { return e.category === '4' })}/>
                </>
                :
                <Empty text='No hay datos para mostrar'/>
                }
            </div>
            }
        </div>
    )
}

export default Repository;

    
    
    





