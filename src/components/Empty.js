import React from 'react';

const Empty = ({ text }) => {
  return (
    <div className='w-full lg:w-3/4 mx-auto border-2 border-red-700 font-semibold text-red-700 bg-gray-50 text-center p-1 rounded-sm'>{ text }</div>
  )
}

export default Empty;