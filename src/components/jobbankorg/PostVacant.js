import React, { useEffect, useState } from 'react';
import BtOrgServices from '../../services/bt/BtOrgServices';
import ImgPostV from '../../images/postvacant.png';
import PostVacantForm from './PostVacantForm';
import Loading from '../Loading';
import Empty from '../Empty';

const PostVacant = ({tok}) => {
    const [type, setType] = useState(1);
    const [states, setStates] = useState(false);
    const [jobtimes, setJobTimes] = useState(false);
    const [docs, setDocs] = useState(false);
    const [loading, setLoading] = useState(true);
    useEffect(() => {
        BtOrgServices.getDataPostV(tok)
        .then(res => {
            if(res.data.status === 1){
                setStates(res.data.states);
                setJobTimes(res.data.jobtimes);
                setDocs(res.data.docs);
            }
            setLoading(false);
        })
        .catch(e => {
            console.error(e);
        })
    }, []);
    return (
        loading ?
            <div className='h-screen w-full flex justify-center content-center items-center'><Loading/></div>
        :
            states && jobtimes ?
            <div className='w-full lg:w-3/4 mx-auto'>
                <div className='w-full'>
                    <img alt="Publica vacante" src={ImgPostV}/>
                </div>
                <div className='w-full grid grid-cols-2 gap-2 my-1'>
                    <button className={`bg-blue-exm3 rounded-sm text-white font-semibold p-2 mx-auto w-3/4 ${ type === 2 ? 'opacity-50' : '' }`} onClick={ () => { setType(1) } }>Sí</button>
                    <button className={`bg-blue-exm3 rounded-sm text-white font-semibold p-2 mx-auto w-3/4 ${ type === 1 ? 'opacity-50' : '' }`} onClick={ () => { setType(2) } }>No</button>
                </div>

                <PostVacantForm tok={tok} type={type} states={states} jobtimes={jobtimes} docs={docs}/>
            </div>
            :
            <Empty text='Ocurrió un error'/>
        
        
    )
}

export default PostVacant;