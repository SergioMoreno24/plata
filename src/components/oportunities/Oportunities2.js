import React, { useEffect, useState } from 'react';
import OportunitiesServices from '../../services/oportunities/OportunitiesServices';
import Empty from '../Empty';
import Loading from '../Loading';
import Oportunity from './Oportunity';


const Oportunities2 = ({ tok }) => {
    const [op, setOp] = useState(false);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        OportunitiesServices.getOportunities(tok)
        .then(res => {
            console.log(res.data);
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
            op && op.length > 0?
            <section className='w-full p-2 text-sm grid grid-cols-1 lg:grid-cols-2 gap-2'>
                <article>
                    {op.filter(s => { return s.organization === 'Teach For All' }).map(o => {
                        return <Oportunity key={ o.id } o={o}/>
                    })}
                </article>
                <article>
                    {op.filter(s => { return s.organization !== 'Teach For All' }).map(o => {
                        return <Oportunity key={ o.id } o={o}/>
                    })}
                </article>
            </section>
            :
            <Empty text='No hay oportunidades actualmente'/>  
    )
}

export default Oportunities2;