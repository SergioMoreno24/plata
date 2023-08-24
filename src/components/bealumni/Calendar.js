import React, { useContext, useEffect, useState } from 'react';
import { modalContext } from '../../contexts/ModalContext';
import EventsServices from '../../services/events/EventsServices';
import Loading from '../Loading';
import Error from '../Error';
import ButtonAdd from '../buttons/ButtonAdd';
import AddEventForm from '../forms/events/AddEventForm';
import DeleteEvent from '../forms/calendar/DeleteEvent';
import Subtitle from '../Subtitle';
import {MdEdit} from 'react-icons/md';
import {TiDelete} from 'react-icons/ti';

const Calendar = ({tok, usertype}) => {
    const [events, setEvents] = useState(false);
    const [loading, setLoading] = useState(1);

    const mContext = useContext(modalContext);
    const { openModal, closeModal } = mContext;

    const months = { '01':'ENE', '02':'FEB', '03':'MAR', '04':'ABR', '05':'MAY', '06':'JUN','07':'JUL', '08':'AGO', '09':'SEP', '10':'OCT', '11':'NOV', '12':'DIC' };
    const classes = {'1': 'bg-transform-social', '2': 'bg-transform-edu', '3': 'bg-transform-personal'};

    useEffect(() => {
        EventsServices.getEvents(tok)
        .then(res => {
            console.log(res.data);
            if(res.data.status === 1){
                setEvents(res.data.events);
                setLoading(0);
            }
            else{
                setLoading(0);
            }
        })
        .catch(e => {
            console.error(e);
            setLoading(0);
        })
    }, []); // eslint-disable-line react-hooks/exhaustive-deps

    return (
        <div className='w-full lg:w-3/4 mx-auto p-2 my-3'>
            <Subtitle text='Calendario de eventos'/>
            <section className='py-3 w-full grid grid-cols-1 justify-center'>
            { usertype === '1' ?
                <div className='w-full lg:w-3/5 mx-auto my-2'>
                    <ButtonAdd text='Agregar evento' foo={()=>{ openModal(<AddEventForm closeModal={ closeModal } tok={ tok } setEvents={setEvents}/>, 'Agregar evento', 'md:w-2/5') }} disabled={false}/>
                </div>
                :
                <></>
            }
            {
                loading === 1 ?
                    <Loading/>
                :
                    events ? 
                        <div className='p-2 grid grid-cols-1 lg:grid-cols-2 gap-2'>
                        {events.map(e => {
                            return <div key={ e.id } className={` grid grid-cols-10 `}>
                                <a className={ `w-full rounded-full ${ classes[e.transformation] } ${ usertype === '1' ? 'col-span-9' : '' } my-1 text-white px-2 lg:px-6 py-2 rounded-sm flex flex-nowrap items-center content-center justify-between` } href={ e.link } rel='nofollow noreferrer' target='_blank'>
                                    <div>
                                        <div className='font-black '>{ e.date }</div>
                                        <div className='text-sm'>{ e.title }</div>
                                    </div>
                                    <div className='text-4xl font-black'>
                                        { months[e.month] }
                                    </div>
                                </a>
                                { usertype === '1' ? 
                                    <div className='w-full flex flex-wrap justify-start items-center content-center'>
                                        <button className='w-6 h-6 font-semibold text-blue-exm2 bg-transparent border-2 border-blue-exm2 mb-1 flex items-center content-center justify-center hover:bg-blue-exm2 hover:text-white' >{<MdEdit/>}</button>
                                        <button className='w-6 h-6 font-semibold text-red-800 bg-transparent border-2 border-red-800 flex items-center content-center justify-center hover:bg-red-800 hover:text-white' onClick={ () => { openModal(<DeleteEvent tok={tok} data={e} setEvents={setEvents} closeModal={closeModal}/>, <span>Eliminar evento</span>, 'lg:w-1/2') } }>{<TiDelete/>}</button>
                                    </div> 
                                    : 
                                    <></> }
                                </div>
                        })}
                        </div>
                    :
                        <Error text='No hay eventos para mostrar'/>
            }
            </section>
        </div>
    )
}

export default Calendar;