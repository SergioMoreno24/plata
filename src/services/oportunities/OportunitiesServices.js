import http from '../../httpcommon/http-common';

const getOportunities = (token) => {
    return http.reqtok(token).get(`/oportunities/oportunities.php`);
};
const getFormation = (token) => {
    return http.reqtok(token).get(`/oportunities/formation.php`);
};

const objExport = { getOportunities, getFormation };
export default objExport;