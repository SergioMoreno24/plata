import React, { useEffect, useState } from 'react';
import BtServices from '../../services/bt/BtServices';
import Loading from '../Loading';
import Empty from '../Empty';
import Vacant from './Vacant';
import Postulate from '../forms/bt/Postulate';
import logoTFA from '../../images/oportunities_bt.png';
const Vacants = ({tok, usertype, openModal}) => {
    const [vacants, setVacants] = useState(false);
    const [docs, setDocs] = useState(false);
    const [loading, setLoading] = useState(true);
    useEffect(() => {
        BtServices.getVacants(tok)
        .then((response) => {
            setVacants(response.data.vacants);
            setDocs(response.data.docs);
            setLoading(false);
        })
        .catch((e) => {
            console.error(e);
        })
    }, []);  // eslint-disable-line react-hooks/exhaustive-deps

    return (
      <div className='w-full mx-auto p-3 text-sm'>
        {loading ? 
            <section className='w-full h-64 mx-auto'>
                <Loading/>
            </section>
        :
            <div className='w-full mt-2'>
                <section className='w-full lg:w-3/4 mx-auto'>
                    <a href='https://teachforall.org/careers' target='_blank' rel='nofollow noreferrer'><img alt='Oportunidades laborales TFA' src={logoTFA} className='w-full h-full object-cover'/></a>
                </section>
                {vacants && vacants.length > 0 ?
                <section className='w-full grid grid-cols-1 md:grid-cols-2 gap-2 mt-3'>
                  {vacants.map(v => {
                      return <article key={v.idV} className='p-3 bg-gray-200 font-semibold texm-sm'>
                          <div className='w-full'>
                              <p className='text-blue-exm2'>{v.charge}</p>
                              <p className='text-xs'>{v.showName === '1' ? v.comercialname : v.confidentialName}</p>
                              <p className='text-xs'>{v.state ? v.state : ''}</p>
                          </div>
                          <div className='w-full md:w-3/5 mx-auto grid grid-cols-2 gap-2 mt-2'>
                              <button className='w-full p-1 bg-gray-800 text-white rounded-sm hover:bg-gray-500 rounded-full' onClick={ () => { openModal(<Postulate tok={tok} vacant={v.idV} org={v.org} reqdocs={v.reqdocs} pdf={v.pdf} docs={docs} setVacants={setVacants}/>, <span>Postular a {v.charge}</span>, 'lg:w-1/2') } }>Postular</button>
                              <button className='w-full p-1 bg-blue-exm3 text-white rounded-sm hover:bg-blue-800 rounded-full' onClick={ () => { openModal(<Vacant vacant={v} docs={docs}/>, v.charge, 'lg:w-3/4') } }>Ver más</button>
                          </div>
                      </article>
                  })}
                </section>
                :
                <div className='my-3'>
                    <Empty text='No hay vacantes por el momento'/>
                </div>}

            </div>
        }   
      </div>
    )
}

export default Vacants;