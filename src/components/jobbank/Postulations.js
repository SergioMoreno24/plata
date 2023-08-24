import React, {useEffect, useState} from 'react';
import BtServices from '../../services/bt/BtServices';
import Loading from '../Loading';
import Empty from '../Empty';
import { Link } from 'react-router-dom';
import Vacant from './Vacant';

const PostulationList = ({list, docs, openModal}) => {
    return list.length > 0 ?
        list.map(k => {
            return <div key={k.id} className='w-full p-1 my-1 font-semibold text-gray-700 cursor-pointer hover:bg-gray-300' onClick={ () => {openModal(<Vacant vacant={k} docs={docs}/>, k.charge, 'lg:w-3/4')} }>{k.charge}</div>
        })
    :
        <></>
};

const Postulations = ({tok, usertype, openModal}) => {
    const [docs, setDocs] = useState(false);
    const [postulations1, setPostulations1] = useState(false);
    const [postulations2, setPostulations2] = useState(false);
    const [postulations3, setPostulations3] = useState(false);
    useEffect(() => {
        BtServices.getPostulations(tok)
        .then(res => {
            if(res.data.status === 1){
                setDocs(res.data.docs);
                setPostulations1(res.data.postulations.filter(p => {return p.status === '1'}));
                setPostulations2(res.data.postulations.filter(p => {return p.status === '2'}));
                setPostulations3(res.data.postulations.filter(p => {return p.status === '3'}));
            }
        })
        .catch(e => {
            console.error(e);
        })
    }, [])
    return (
        <div className='w-full p-2 grid grid-cols-1 lg:grid-cols-3 gap-2'>
            <div className='bg-gray-200 rounded-sm shadow-md p-2'>
                <p className='font-bold text-blue-exm2'>EN PROGRESO</p>
                {postulations1 ? postulations1.length > 0 ? <PostulationList list={postulations1} docs={docs} openModal={openModal}/> : <div className='w-full text-center font-semibold'><p className='my-2'>Aún no tienes postulaciones</p><Link className='py-1 px-3 bg-blue-exm2 text-white rounded-sm' to={`${process.env.REACT_APP_HOMEPAGE}bt/vacantes`}>Conocer las vacantes</Link></div> : <Loading/>}
            </div>
            <div className='bg-gray-200 rounded-sm shadow-md p-2'>
                <p className='font-bold text-blue-exm2'>ACEPTADAS</p>
                {postulations2 ? <PostulationList list={postulations2} docs={docs} openModal={openModal}/> : <Loading/>}
            </div>
            <div className='bg-gray-200 rounded-sm shadow-md p-2'>
                <p className='font-bold text-blue-exm2'>RECHAZADAS</p>
                {postulations3 ? <PostulationList list={postulations3} docs={docs} openModal={openModal}/> : <Loading/>}
            </div>
        </div>
    )
}

export default Postulations;