import http from '../../httpcommon/http-common';

const register = (data) => {
    return http.req().post(`users/register.php`, data);
};

const objExport = { register };
export default objExport;