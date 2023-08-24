import React, { useEffect, useState } from 'react';
import AdminServices from '../../services/admin/AdminServices';
import Loading from '../Loading';
import Error from '../Error';
import Button1 from '../buttons/Button1';
import ListUsers from './ListUsers';

const Users = ({tok}) => {
    const [alumnis, setAlumnis] = useState(false);
    const [orgs, setOrgs] = useState(false);
    const [type, setType] = useState('a');
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        AdminServices.getUsers(tok)
        .then(res => {
            if(res.data.status === 1){
                setAlumnis(res.data.alumni);
                setOrgs(res.data.orgs);
            }
            setLoading(false);
        })
        .catch(e => {
            console.error(e);
        })
    });

    return (
      <div className='w-full lg:w-3/4 mx-auto'>
        {loading ? 
          <Loading/>
        :
          alumnis && orgs ? 
            <div>
              <div className='w-full grid grid-cols-2 gap-1'>
                  <button disabled={false} onClick={() => {setType('a')}} className={`w-full p-1 ${ type === 'a' ? 'bg-blue-exm2 text-white' : 'bg-white text-blue-exm2' } rounded-sm hover:bg-blue-exm2 hover:text-white border-2 border-blue-exm2`}><em>Alumni</em></button>
                  <button disabled={false} onClick={() => {setType('o')}} className={`w-full p-1 ${ type === 'o' ? 'bg-blue-exm2 text-white' : 'bg-white text-blue-exm2' } rounded-sm hover:bg-blue-exm2 hover:text-white border-2 border-blue-exm2`}>Organizaciones</button>
              </div>
              <div className='w-full overflow-x-scroll lg:overflow-x-auto my-2'>
                  <ListUsers users={ type === 'a' ? alumnis : orgs } type={type}/>
              </div>
            </div>
          :
            <Error text={'No se pudieron recuperar los datos'}/>
        }
      </div>
    )
}

export default Users;