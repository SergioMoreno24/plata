import React, {useEffect, useState} from 'react';
import BtOrgServices from '../../services/bt/BtOrgServices';
import Loading from '../Loading';
import Empty from '../Empty';
import Vacant from './Vacant';
import Alumni from '../community/Alumni';

const Postulations = ({tok, usertype, openModal}) => {
    const [docs, setDocs] = useState(false);
    const [data, setData] = useState(false);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        BtOrgServices.getPostulations(tok)
        .then(res => {
            setData(res.data.postulations);
            setLoading(false);
            console.log(res.data);
        })
        .catch(e => {
            console.error(e);
        })
    }, [])
    return (
        <div className='w-full p-2 grid grid-cols-1 gap-2'>
            {loading ?
                <Loading/>   
            :
            data ? 
            <div className='bg-white rounded-sm shadow-md p-2'>
                    <p className='font-bold text-blue-exm2'>Postulaciones</p>
                    {
                        data.map(d => {
                            return <div key={ d.vdata.id } className='w-full lg:w-3/4 mx-auto rounded-sm bg-gray-100 my-2 p-2'>
                                <h2 className='text-blue-exm3 font-semibold text-center'>{d.vdata.charge}</h2>
                                {d.postulations.map(p => {
                                    return <div key={p.idP} className='bg-white my-1 p-2 text-sm grid grid-cols-1 lg:grid-cols-2 gap-1'>
                                        <p className='text-blue-exm text-base font-semibold flex items-center content-center' onClick={() => { openModal(<Alumni profile={{name : p.name, lastname : p.lastname, email : p.email, generation : p.generation, phone : p.phone, phoneormail : p.phoneormail, pathways : p.pathways, university : p.university, career : p.career, haspostgraduate : p.haspostgraduate, postgraduatelevel : p.postgraduatelevel, postgraduatewhere : p.postgraduatewhere, hasactualjob : p.hasactualjob, lookingforjob : p.lookingforjob, organization : p.organization, rol : p.rol, city : p.city, state : p.state, competences : p.competences, languages : p.languages, interests : p.interests, cv : p.cv, iscommittee : p.iscommittee, linksmedium : p.linksmedium, img : p.img}}/>) }}>{ `${p.name} ${p.lastname}` }</p>
                                        <div className='grid grid-cols-2 lg:grid-cols-1 gap-1'>
                                            <button className='w-full lg:w-1/2 mx-auto bg-white border-2 border-green-600 text-green-600 text-center p-1 rounded-md text-xs'>Me interesa</button>
                                            <button className='w-full lg:w-1/2 mx-auto bg-white border-2 border-red-700 text-red-700 text-center p-1 rounded-md text-xs'>Rechazar</button>
                                        </div>
                                    </div>
                                })}
                            </div>
                        })
                    }
                </div>
            :
                <Empty text='Parece que aún no tienes postulaciones'/>
            }
        </div>
    )
}

export default Postulations;