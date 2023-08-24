import http from '../../httpcommon/http-common';
import httpFiles from '../../httpcommon/http-common-files';

const getVacants = (token) => {
    return http.reqtok(token).get(`bt/vacants/vacants.php`);
};

const getPostulations = (token) => {
    return http.reqtok(token).get(`bt/postulations/postulations.php`);
};

const storePostulation = (token, data) => {
    return httpFiles.postWithFiles(token).post(`bt/postulations/storepostulation.php`, data);
};

const objExport = { getVacants, getPostulations, storePostulation };
export default objExport;