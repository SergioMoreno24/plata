import http from '../../httpcommon/http-common';

const getUsers = (token) => {
    return http.reqtok(token).get(`/admin/getusers.php`);
};

const getStats = (token) => {
    return http.reqtok(token).get(`/admin/getstats.php`);
};

const objExport = { getUsers, getStats};
export default objExport;