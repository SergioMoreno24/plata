import http from '../../httpcommon/http-common';

const forgot = (data) => {
    return http.req().post(`/reqpass/forgot.php`, data);
};

const getrecover = (code) => {
    return http.req().get(`/reqpass/recover.php?code=${code}`);
};
const resetpass = (data) => {
    return http.req().post(`/reqpass/reset.php`, data);
};
const objExport = { forgot, getrecover, resetpass };
export default objExport;