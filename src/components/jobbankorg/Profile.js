import React, {useContext,useEffect, useState} from 'react';
import BtOrgServices from '../../services/bt/BtOrgServices';
import { modalContext } from '../../contexts/ModalContext';
import { FaUserAlt } from 'react-icons/fa';
import { IconContext } from 'react-icons/lib';
import Loading from '../Loading';
import Empty from '../Empty';
import UpdateProfileOrg from '../forms/bt/UpdateProfileOrg';
import Button1 from '../buttons/Button1';
const Rowprofile = ({ title, value }) => {
    return <div className='w-full py-2 border-b border-gray-300 grid grid-cols-5 items-center text-sm'>
        <div className='col-span-2 px-3 font-semibold text-blue-exm2'>{ title }</div>
        <div className='col-span-3 px-3'>{ value }</div>
    </div>;
};

const Profile = ({tok}) => {
    const mContext = useContext(modalContext);
    const {openModal, closeModal} = mContext;
    const [loading, setLoading] = useState(true);
    const [profile, setProfile] = useState(false);
    useEffect(() => {
        BtOrgServices.getProfile(tok)
        .then((response) => {
            console.log(response.data.query);
            console.log(response.data.profile);
            setProfile(response.data.profile);
            setLoading(false);
        })
        .catch((e) => {
            console.error(e);
        })
    }, []);  // eslint-disable-line react-hooks/exhaustive-deps

    return (
        <div className='h-auto lg:h-screen'>
        {
        loading ? 
            <Loading/>
        :
            profile ?
            <div className='w-full grid grid-cols-1 gap-2 p-2 lg:p-6'>
                <div className='flex justify-center content-center flex-wrap'>
                    <div className='relative rounded-full h-64 w-64 mx-auto overflow-hidden'>
                        <div className='w-64 h-64 rounded-full overflow-hidden'>{ profile.img ? <img alt={ `Profile ${ profile.name }` } src={ `${process.env.REACT_APP_BASE_URL}/media/bt/img/${ profile.img }` } className='h-full w-full object-cover'/> : <IconContext.Provider value={{ className:'w-full h-full'}}><FaUserAlt/></IconContext.Provider> }</div>
                        {/* <button className='absolute w-full bottom-1 text-center bg-gray-300 bg-opacity-70 text-white font-semibold text-xs h-12' onClick={ () => { openModal(<UpdateProfilePhoto data={ profile } tok={ tok } setprofile={ setprofile }/>, 'Cambiar foto de perfil', '1/2') } }>Cambiar foto de perfil</button> */}
                    </div>
                    <div className='w-full mt-3'>
                        <div className='w-full text-center text-lg font-semibold text-blue-exm2'>{ `${profile.name}` }</div>
                        <div className='w-full text-center text-sm font-semibold text-purple-exm'>{ profile.email }</div>
                        {/* <div className='w-full text-center text-lg font-semibold text-purple-exm'>{ profile.generation }</div> */}
                    </div>
                </div>
                <div className='w-11/12 p-2 mx-auto'>
                    <div className='font-semibold bg-purple-exm text-white py-2 px-3 my-2'></div>
                    <Rowprofile title={ `Nombre comercial:` } value={ profile.comercialname }/>
                    <Rowprofile title={ `Direccción:` } value={ profile.address }/>
                    <Rowprofile title={ `Descripción:` } value={ profile.description }/>
                    <Rowprofile title={ `Sitio web:` } value={ profile.link }/>

                    <div className='w-full lg:w-1/2 mx-auto mt-6 text-center'>
                        <Button1 foo={() => { openModal(<UpdateProfileOrg profile={ profile } tok={ tok } setProfile={ setProfile } closeModal={closeModal}/>, 'Actualizar información', 'md:w-2/5') }} text='Actualizar mis datos' disabled={false}/>
                        {/* <button className='btn-exm' onClick={ () => { openModal(<UpdateProfileA data={ profile } tok={ tok } setprofile={ setprofile }/>, 'Actualizar información', '3/4') } }>Actualizar mi información</button> */}
                    </div>
                </div>
            </div>
            :
            <div className='w-full lg:w-1/2 p-2 mx-auto'>
                <Empty text='No se pudieron recuperar tus datos'/>
            </div>
        }
    </div>
    )
}

export default Profile;