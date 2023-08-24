import React from 'react';
import imgRegional from '../../images/newsletters/regional.png';
import imgMonthly from '../../images/newsletters/monthly.png';
import imgJan from '../../images/newsletters/january.png';
import imgFeb from '../../images/newsletters/february.png';
import imgMar from '../../images/newsletters/march.png';
import imgApr from '../../images/newsletters/april.png';
import imgMay from '../../images/newsletters/may.png';
import imgJun from '../../images/newsletters/june.png';
import imgJul from '../../images/newsletters/july.png';
import imgAug from '../../images/newsletters/august.png';
import imgSep from '../../images/newsletters/september.png';
import imgOct from '../../images/newsletters/october.png';
import imgNov from '../../images/newsletters/november.png';
import imgDec from '../../images/newsletters/december.png';

const Newsletter = ({ n, ntype }) => {
    const images = { 3: imgRegional, 2: imgMonthly, 1:{
        1:imgJan,
        2:imgFeb,
        3:imgMar,
        4:imgApr,
        5:imgMay,
        6:imgJun,
        7:imgJul,
        8:imgAug,
        9:imgSep,
        10:imgOct,
        11:imgNov,
        12:imgDec
    } };
    return (
        <a href={ n.link } rel='nofollow noreferrer' target='_blank' className='block text-lg font-black text-center w-full text-blue-exm2 bg-gray-200 my-2'>
            <img alt='Newsletter' src={ ntype === 1 ? images[ntype][n.month] : images[ntype] }/>
            <div className='w-full flex justify-center content-center items-center my-2 px-2'>
                <p className='text-lg font-black text-center w-full text-blue-exm2'>{ n.title }</p>
            </div>
        </a>
    )
}

export default Newsletter;