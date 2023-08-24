import axios from 'axios';

const postWithFiles = (token) => {
    return axios.create({
        baseURL: process.env.REACT_APP_BASE_URL,
        headers: {
            'Content-Type': 'multipart/form-data',
            'x-api-key' : process.env.REACT_APP_API_KEY,
            'x-access-token' : token
        }
    });

    // return axios.post(`${ process.env.REACT_APP_BASE_URL }${ url }`, data, {
    //     headers: {
    //         'Content-type': 'multipart/form-data',
    //         'x-api-key' : process.env.REACT_APP_API_KEY,
    //     }
    // })
};

const objExport = { postWithFiles };
export default objExport;