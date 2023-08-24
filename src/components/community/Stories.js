import React from 'react';
import imgMedium from '../../images/img-medium.png';
import imgBook from '../../images/img-book.png';
import imgStories from '../../images/img-stories.png';

const Stories = () => {
  return (
    <div className='w-full lg:w-5/6 mx-auto py-3'>
        <a rel='nofollow noreferrer' className='block my-2' href='https://medium.com/alumni-exm' target='_blank'><img alt='Banner medium' src={ imgMedium }/></a>
        <a rel='nofollow noreferrer' className='block my-2' href='https://drive.google.com/file/d/1ZVxmCVIg-ew_TlAaoOXA2Wf978RMTpdB/view?usp=sharing' target='_blank'><img alt='Banner libro' src={ imgBook }/></a>
        <a rel='nofollow noreferrer' className='block my-2' href='mailto:eramos@ensenapormexico.org' target='_blank'><img alt='Banner historias' src={ imgStories }/></a>
    </div>
    
  )
}

export default Stories;