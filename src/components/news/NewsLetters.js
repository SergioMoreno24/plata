import React, { useContext, useEffect, useState } from 'react';
import NewslettersServices from '../../services/newsletters/NewslettersServices';
import { modalContext } from '../../contexts/ModalContext';
import Empty from '../Empty';
import Loading from '../Loading';
import NewsLetter from './NewsLetter';
import AddNewsLetter from '../forms/newsletters/AddNewsLetter';

const NewsLetters = ({ tok, ntype }) => {
    const [news, setNews] = useState(false);
    const [isAdmin, setIsAdmin] = useState(false);
    const [loading, setLoading] = useState(true);

    const mContext = useContext(modalContext);
    const { openModal, closeModal } = mContext;

    const ntypes = {1: <em>alumni</em>, 2: <span>ExM</span>, 3: <span>regional</span>};

    useEffect(() => {
        setNews(false);
        setLoading(true);
        NewslettersServices.getNewsLetters(tok, ntype)
        .then(res => {
            if(res.data.status === 1){
                setNews(res.data.newsletters);
                setIsAdmin(res.data.isadmin);
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
    }, [ntype]); // eslint-disable-line react-hooks/exhaustive-deps

    return (
        loading ? 
        <div className='w-full h-64 p-3 flex justify-center items-center content-center'>
            <Loading/>
        </div>
        :
            news ?
            <div className='w-full'>
                {isAdmin ?
                <div className='w-full text-center'>
                    <button className='w-full lg:w-1/2 bg-gray-50 border-2 border-green-exm text-green-exm text-center rounded-sm shadow-md py-1' onClick={ () => { openModal(<AddNewsLetter ntype={ ntype } tok={tok} closeModal={closeModal} setNews={setNews}/>, <span>Agrear boletín { ntypes[ntype] }</span>, 'lg:w-1/2') } }>Agregar boletín</button>
                </div>
                :
                <></> 
                }
                <section className='w-full p-2 text-sm grid grid-cols-1 lg:grid-cols-2 gap-2'>
                    {news.map(n => {
                        return <NewsLetter key={ n.id } n={n} ntype={ ntype }/>
                    })}
                </section>
            </div>
            :
            <Empty text='No hay oportunidades actualmente'/>  
    )
}

export default NewsLetters;