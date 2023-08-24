import http from '../../httpcommon/http-common';

const login = (data) => {
    return http.req().post(`users/login.php`, data);
};

const objExport = { login };
export default objExport;