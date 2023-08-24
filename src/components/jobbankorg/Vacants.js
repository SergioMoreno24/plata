import React, { useEffect, useState } from 'react';
import BtOrgServices from '../../services/bt/BtOrgServices';
import Loading from '../Loading';
import Empty from '../Empty';
import Vacant from './Vacant';
import DeleteVacant from './DeleteVacant';
import {RiCloseFill} from 'react-icons/ri';
import {MdModeEdit} from 'react-icons/md';
import {FaEye} from 'react-icons/fa';
import { Link } from 'react-router-dom';

const Vacants = ({tok, usertype, openModal, closeModal}) => {
    const [vacants, setVacants] = useState(false);
    const [docs, setDocs] = useState(false);
    const [loading, setLoading] = useState(true);
    useEffect(() => {
        BtOrgServices.getVacants(tok)
        .then((res) => {
            setVacants(res.data.vacants);
            setDocs(res.data.docs);
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
                {vacants ?
                <section className='w-full grid grid-cols-1 md:grid-cols-2 gap-2 mt-3'>
                  {vacants.map(v => {
                      return <article key={v.idV} className={`p-3 bg-gray-200 font-semibold texm-sm border ${ v.status === '1' ? 'border-green-600' : 'border-red-600'  }`}>
                          <div className='w-full'>
                                <div className='grid grid-cols-3 gap-1'>
                                    <p className='col-span-2 text-blue-exm2'>{v.charge}</p>
                                    <div className='col-span-1 grid grid-cols-2 gap-1'>
                                        <div className='mx-auto bg-white p-1 rounded-full cursor-pointer' onClick={ () => { openModal(<Vacant vacant={v} docs={docs}/>, v.charge, 'lg:w-3/4') } }><FaEye/></div>
                                        {/* <div className='mx-auto text-white bg-blue-600 p-1 rounded-full cursor-pointer'><MdModeEdit/></div> */}
                                        <div className='mx-auto text-white bg-red-600 p-1 rounded-full cursor-pointer' onClick={ () => { openModal(<DeleteVacant tok={tok} vacant={v} docs={docs} setVacants={setVacants}/>, v.charge, 'lg:w-1/2') } }><RiCloseFill/></div>
                                    </div>
                                </div>
                                <p className='text-xs'>{v.showName === '1' ? v.comercialname : v.confidentialName}</p>
                                <p className='text-xs'>{v.state ? v.state : ''}</p>
                          </div>
                          <div className='w-full md:w-3/5 mx-auto mt-2'>
                              {/* <button className='w-full p-1 bg-blue-exm3 text-white rounded-sm hover:bg-blue-800 rounded-full' >Ver más</button> */}
                          </div>
                      </article>
                  })}
                </section>
                :
                <div className='my-3'>
                    <Empty text='No hay vacantes por el momento'/>
                    <Link to={`${process.env.REACT_APP_HOMEPAGE}bt-org/vacants`} className='w-full p-1 bg-blue-exm text-white rounded-sm hover:bg-purple-exm'>Publica una vacante</Link>
                </div>}

            </div>
        }   
      </div>
    )
}

export default Vacants;