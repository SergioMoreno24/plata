import axios from 'axios';

const req = () => {
    return axios.create({
        baseURL: process.env.REACT_APP_BASE_URL,
        headers: {
            'Content-type': 'application/json',
            'x-api-key' : process.env.REACT_APP_API_KEY,
        }
    })
};

const reqtok = (token) => {
    return axios.create({
        baseURL: process.env.REACT_APP_BASE_URL,
        headers: {
            "Content-Type": "application/json",
            'x-api-key' : process.env.REACT_APP_API_KEY,
            'x-access-token' : token
        }
    });
}

const objExport = { req, reqtok };
export default objExport;