import http from '../../httpcommon/http-common';
import httpFiles from '../../httpcommon/http-common-files';

const getProfile = (token) => {
    return http.reqtok(token).get(`bt/profile/profileorg.php`);
};

const updateProfile = (token, data) => {
    return http.reqtok(token).post(`bt/profile/updateprofileorg.php`, data);
};

const getVacants = (token) => {
    return http.reqtok(token).get(`bt/vacants/vacantsorg.php`);
};

const storeVacant = (token, data) => {
    return http.reqtok(token).post(`bt/vacants/storevacantorg.php`, data);
};

const deleteVacant = (token, data) => {
    return http.reqtok(token).post(`bt/vacants/deletevacantorg.php`, data);
};

const getAlumnis = (token) => {
    return http.reqtok(token).get(`bt/alumnis/alumnisorg.php`);
};

const getFilteredAlumnis = (token, data) => {
    return http.reqtok(token).post(`bt/alumnis/alumnisorg.php`, data);
};

const getPostulations = (token) => {
    return http.reqtok(token).get(`bt/postulations/postulationsorg.php`);
};

const storePostulation = (token, data) => {
    return httpFiles.postWithFiles(token).post(`bt/postulations/storepostulation.php`, data);
};
const getDataPostV = (token) => {
    return http.reqtok(token).get(`bt/vacants/getdatapostvacantorg.php`);
};
const objExport = { getProfile, updateProfile, getVacants, storeVacant, deleteVacant, getAlumnis, getFilteredAlumnis, getPostulations, storePostulation, getDataPostV };
export default objExport;