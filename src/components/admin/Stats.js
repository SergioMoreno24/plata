import React, { useEffect, useState } from 'react';
import AdminServices from '../../services/admin/AdminServices';
import Loading from '../Loading';
import Error from '../Error';

const RowStats = ({title, bg, data}) => {
    return <section className={`w-full ${bg} text-center text-3xl font-black p-4 rounded-sm shadow-md text-white my-2`}>
        <h2 className='my-2'>{title}</h2>
        <div className='w-full flex items-center content-center justify-evenly'>
            {data.map((d, i) => {
                return <article key={i} className='w-1/2 lg:w-1/4 mx-4 shadow-md rounded-lg p-2 border-2 border-white text-center'>
                    <h3>{d[1]}</h3>
                    <p className='font-semibold text-lg'>{d[0]}</p>
                </article>
            })}
        </div>
    </section>
}

const Stats = ({tok}) => {
    const [stats, setStats] = useState(false);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        AdminServices.getStats(tok)
        .then(res => {
            console.log(res.data);
            if(res.data.status === 1){
                setStats(res.data.stats);
            }
            setLoading(false);
        })
        .catch(e => {
            console.error(e);
        })
    }, []);

    return (
      <div className='w-full lg:w-3/4 mx-auto p-2'>
        {loading ? 
          <Loading/>
        :
          stats ? 
            <div>
                <RowStats title='Cuentas' bg='bg-blue-exm' data={stats.users}/>
                <RowStats title='Vacantes' bg='bg-purple-exm' data={stats.vacants}/>
                <section className={`w-full bg-green-exm text-3xl font-black p-4 rounded-sm shadow-md text-white my-2`}>
                    <h2 className='my-2 text-center'>Visitas</h2>
                    <div className='w-full'>
                        {stats.log.map((d, i) => {
                            return <article key={i} className='w-full grid grid-cols-4 gap-1 shadow-md p-1 border-b border-white'>
                                <p className='col-span-3 flex items-center content-center justify-start font-semibold text-lg px-3'>{d[0]}</p>
                                <h3 className='col-span-1 flex items-center content-center justify-center text-center'>{d[1]}</h3>
                            </article>
                        })}
                    </div>
                </section>
            </div>
          :
            <Error text={'No se pudieron recuperar los datos'}/>
        }
      </div>
    )
}

export default Stats;