import http from '../../httpcommon/http-common';

const storevisit = (token, data) => {
    return http.reqtok(token).post(`visits/storevisit.php`, data);
};

const objExport = { storevisit };
export default objExport;