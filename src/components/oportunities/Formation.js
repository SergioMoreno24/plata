import React, { useEffect, useState } from 'react';
import OportunitiesServices from '../../services/oportunities/OportunitiesServices';
import Empty from '../Empty';
import Loading from '../Loading';
import Oportunity from './Oportunity';


const Formation = ({ tok }) => {
    const [op, setOp] = useState(false);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        OportunitiesServices.getFormation(tok)
        .then(res => {
            if(res.data.status === 1){
                setOp(res.data.oportunities);
                setLoading(false);
            }
            else{
                setLoading(false);
            }
        })
        .catch(e => {
            console.error(e);
            setLoading(false);
        })
    }, []); // eslint-disable-line react-hooks/exhaustive-deps
    return (
        loading ? 
        <div className='w-full h-64 p-3 flex justify-center items-center content-center'>
            <Loading/>
        </div>
        :
            op && op.length > 0 ?
            <section className='w-full p-3 text-sm grid grid-cols-1 lg:grid-cols-2 gap-2'>
                {op.map((o, i) => { 
                    return <Oportunity key={ o.id } o={o}/>
                })}
            </section>
            :
            <Empty text='No hay oportunidades actualmente'/>  
    )
}

export default Formation;