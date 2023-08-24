import React, { useContext, useEffect, useState } from 'react';
import { cookiesContext } from '../contexts/CookiesContext';
import { modalContext } from '../contexts/ModalContext';
import ProfileServices from '../services/users/ProfileServices';
import { FaUserAlt } from 'react-icons/fa';
import { IconContext } from 'react-icons/lib';
import UpdateProfileA from '../components/forms/profile/UpdateProfileA';
import UpdateProfilePhoto from '../components/forms/profile/UpdateProfilePhoto';
import Loading from '../components/Loading';
import Empty from '../components/Empty';
import Button1 from '../components/buttons/Button1';

const Rowprofile = ({ title, value }) => {
    return <div className='w-full py-2 border-b border-gray-300 grid grid-cols-1 lg:grid-cols-5 items-center text-sm'>
        <div className='lg:col-span-1 px-3 font-semibold text-blue-exm2'>{ title }</div>
        <div className='lg:col-span-4 px-3'>{ value }</div>
    </div>;
};

const Profile = () => {
    const context = useContext(cookiesContext);
    const [loading, setLoading] = useState(true);
    const [profile, setProfile] = useState(false);
    const contextM = useContext(modalContext);
    const { getCookies } = context;
    const { openModal } = contextM;
    const tok = getCookies()['tok_platav2'];

    useEffect(() => {
        ProfileServices.getProfile(tok)
        .then((response) => {
            console.log(response.data);
            setProfile(response.data.profile);
            setLoading(false);
        })
        .catch((e) => {
            console.error(e);
        })
    }, []);  // eslint-disable-line react-hooks/exhaustive-deps

    return (
        <div className='h-screen'>
            {
            loading ? 
                <Loading/>
            :
                profile ?
                <div className='w-full grid grid-cols-1 lg:grid-cols-3 gap-2 p-2 lg:p-6'>
                    <div className='flex justify-center content-center flex-wrap'>
                        <div className='relative rounded-full h-64 w-64 mx-auto overflow-hidden'>
                            <div className='w-64 h-64 rounded-full overflow-hidden relative'>
                                { profile.img ? <img alt={ `Profile ${ profile.name }` } src={ `${process.env.REACT_APP_BASE_URL}/media/directory/${ profile.img }` } className='h-full w-full object-cover'/> : <IconContext.Provider value={{ className:'w-full h-full'}}><FaUserAlt/></IconContext.Provider> }
                                <button className='w-full absolute bottom-0 text-white font-semibold bg-gray-200 py-3' onClick={ () => { openModal(<UpdateProfilePhoto tok={tok} setProfile={setProfile}/>, 'Cambiar foto de pefil', 'lg:w-1/2') } }>Cambia tu foto de perfil</button>
                            </div>
                            {/* <button className='absolute w-full bottom-1 text-center bg-gray-300 bg-opacity-70 text-white font-semibold text-xs h-12' onClick={ () => { openModal(<UpdateProfilePhoto data={ profile } tok={ tok } setprofile={ setprofile }/>, 'Cambiar foto de perfil', '1/2') } }>Cambiar foto de perfil</button> */}
                        </div>
                        <div className='w-full mt-3'>
                            <div className='w-full text-center text-lg font-semibold text-blue-exm2'>{ `${profile.name} ${profile.lastname}` }</div>
                            <div className='w-full text-center text-sm font-semibold text-purple-exm'>{ profile.email }</div>
                            {/* <div className='w-full text-center text-lg font-semibold text-purple-exm'>{ profile.generation }</div> */}
                        </div>
                    </div>
                    <div className='w-11/12 p-2 lg:col-span-2'>
                        <div className='font-semibold bg-purple-exm text-white py-2 px-3 my-2'></div>
                        <Rowprofile title={ `Carrera:` } value={ profile.career }/>
                        <Rowprofile title={ `Universidad:` } value={ profile.university }/>
                        <Rowprofile title={ `Organización:` } value={ profile.organization }/>
                        <Rowprofile title={ `Puesto:` } value={ profile.rol }/>
                        <Rowprofile title={ `Teléfono:` } value={ profile.phone }/>
                        {
                            profile.havePostgraduate === '1' ?
                            <>
                            <Rowprofile title={ `Posgrado:` } value={ profile.postgraduate }/>
                            <Rowprofile title={ `Dónde tomaste posgrado:` } value={ profile.wherePostgraduate }/>
                            <Rowprofile title={ `Estatus del posgrado:` } value={ profile.statusP }/>
                            </>
                            :
                            <></>
                        }
                        <Rowprofile title={ `Idiomas:` } value={ profile.languages }/>
                        <Rowprofile title={ `Conocimientos, habilidades, competencias, especialización:` } value={ profile.competences }/>
                        <div className='w-full lg:w-1/2 mx-auto mt-6 text-center'>
                            <Button1 foo={() => { openModal(<UpdateProfileA profile={ profile } tok={ tok } setProfile={ setProfile }/>, 'Actualizar información', 'md:w-2/5') }} text='Actualizar mis datos' disabled={false}/>
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