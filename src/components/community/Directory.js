import React, { useContext, useEffect, useState } from 'react';
import { modalContext } from '../../contexts/ModalContext';
import CommunityServices from '../../services/community/CommunityServices';
import Alumni from './Alumni';
import Button1 from '../buttons/Button1';
import Empty from '../Empty';
import Select from '../inputs/Select';
import Loading from '../Loading';
import InputText from '../inputs/InputText';

const Directory = ({ tok }) => {
    const [states, setStates] = useState(false);
    const [stateA, setStateA] = useState(0);
    const [pathways, setPathways] = useState(false);
    const [pathway, setPathway] = useState(0);
    const [alumnis, setAlumnis] = useState(false);
    const [loading, setLoading] = useState(true);
    const [generations, setGenerations] = useState(false);
    const [generation, setGeneration] = useState(0);
    const [name, setName] = useState('');

    const mContext = useContext(modalContext);
    const { openModal } = mContext;

    useEffect(() => {
        CommunityServices.getDirectory(tok, {})
        .then(res => {
            setAlumnis(res.data.alumnis);
            setStates(res.data.states);
            setPathways(res.data.pathways);
            setGenerations(res.data.generations);
            setLoading(false);
        })
        .catch(e => {
            setLoading(false);
            console.error(e);
        });
    }, []); // eslint-disable-line react-hooks/exhaustive-deps

    const changeFilters = () => {
        setLoading(true);
        let data = {state:stateA, generation, pathway, name};
        console.group(data);
        CommunityServices.getFilteredDirectory(tok, data)
        .then(res => {
            setAlumnis(res.data.alumnis);
            setLoading(false);
        })
        .catch(e => {
            setLoading(false);
            console.error(e);
        });
    };

    return (
        <div className='w-full mx-auto p-3 text-sm'>
            {loading ? 
                <section className='w-full h-64 mx-auto'>
                    <Loading/>
                </section>
            :
                <div className='w-full mt-2'>
                    <div className='w-full grid grid-cols-1 lg:grid-cols-2 gap-2'>
                        <div>{generations ? <Select name='generation' complementText='una generación' data={ generations } value={generation} foo={ (evt) => { setGeneration(evt.target.value); } }/> : <></>}</div>
                        <div>{states ? <Select name='state' complementText='un estado' data={ states } value={stateA} foo={ (evt) => { setStateA(evt.target.value); } }/> : <></>}</div>
                        <div>{pathways ? <Select name='pathways' complementText='un eje estratégico' data={ pathways } value={pathway} foo={ (evt) => { setPathway(evt.target.value); } }/> : <></>}</div>
                        <div><InputText type='text' name='name'  placeholder={'Nombre'} value={name} foo={ (evt) => { setName(evt.target.value) } } /></div>
                    </div>
                    <div className='w-full my-2'><Button1 disabled={false} text='Filtrar' foo={ changeFilters }/></div>
                    {alumnis && alumnis.length > 0 ?
                    <section className='w-full grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-2 mt-3'>
                    {alumnis.map((a, i) => {
                        return <article key={i} className='p-3 bg-gray-200 font-semibold text-blue-exm2 texm-sm grid grid-cols-6 items-center content-center cursor-pointer' onClick={ () => { openModal(<Alumni profile={a}/>, a.name, 'lg:w-3/5') } }>
                        <div className='col-span-2'>
                            <div className='rounded-full h-16 w-16 overflow-hidden'>
                                <img alt={ `Profile ${ a.name }` } src={ `${process.env.REACT_APP_BASE_URL}/media/directory/${ a.img ? a.img : 'generic_alumni.png' }` } className="h-full w-full object-cover"/>
                            </div>
                        </div>
                        <p className='col-span-4'>{ `${ a.name } ${ a.lastname }` }</p>
                    </article>
                    })}
                    </section>
                    :
                    <div className='my-3'>
                        <Empty text='No hay resultados'/>
                    </div>}

                </div>
            }   
        </div>
    )
}

export default Directory;