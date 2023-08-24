import React from 'react';
import { FaUserAlt } from "react-icons/fa";
import { IconContext } from 'react-icons/lib';

const Rowprofile = ({ title, value }) => {
    return <div className="w-full py-2 border-b border-gray-300 grid grid-cols-1 lg:grid-cols-5 items-center text-sm">
        <div className="col-span-2 px-3 font-semibold text-blue-exm2">{ title }</div>
        <div className="col-span-3 px-3">{ value }</div>
    </div>;
};

const Alumni = ({profile}) => {
    return (
        <div className='w-full grid grid-cols-1 lg:grid-cols-3 gap-2 p-2 lg:p-6'>
            <div className="flex justify-center content-center flex-wrap">
                <div className="relative rounded-full h-64 w-64 mx-auto overflow-hidden">
                    <div className="w-64 h-64 rounded-full overflow-hidden">{ profile.img ? <img alt={ `Profile ${ profile.name }` } src={ `${process.env.REACT_APP_BASE_URL}/media/directory/${ profile.img }` } className="h-full w-full object-cover"/> : <IconContext.Provider value={{ className:"w-full h-full"}}><FaUserAlt/></IconContext.Provider> }</div>
                    {/* <button className="absolute w-full bottom-1 text-center bg-gray-300 bg-opacity-70 text-white font-semibold text-xs h-12" onClick={ () => { openModal(<UpdateProfilePhoto data={ profile } tok={ tok } setprofile={ setprofile }/>, 'Cambiar foto de perfil', '1/2') } }>Cambiar foto de perfil</button> */}
                </div>
                <div className="w-full mt-3">
                    <div className="w-full text-center text-lg font-semibold text-blue-exm2">{ `${profile.name} ${profile.lastname}` }</div>
                    <div className="w-full text-center text-sm font-semibold text-purple-exm">{ profile.email }</div>
                    {/* <div className="w-full text-center text-lg font-semibold text-purple-exm">{ profile.generation }</div> */}
                </div>
            </div>
            <div className="mx-auto w-11/12 p-2 lg:col-span-2">
                <div className="font-semibold bg-purple-exm text-white py-2 px-3 my-2"></div>
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
            </div>
        </div>
    )
}

export default Alumni;