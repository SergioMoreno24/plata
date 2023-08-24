import http from '../../httpcommon/http-common';

const getDirectory = (token) => {
    return http.reqtok(token).get(`/community/directory.php`);
};
const getFilteredDirectory = (token, data) => {
    return http.reqtok(token).post(`/community/directory.php`, data);
};
const getCommittee = (token) => {
    return http.reqtok(token).get(`/community/committee.php`);
};
const getEntrepreneurships = (token) => {
    return http.reqtok(token).get(`/community/entrepreneurships.php`);
};
const deleteEntrepreneurship = (token, data) => {
    return http.reqtok(token).post(`/community/entrepreneurships/delete.php`, data);
};

const addOrUpdateEntrepreneurship = (token, data) => {
    return http.reqtok(token).post(`/community/entrepreneurships/addorupdate.php`, data);
};

const objExport = { getCommittee, getDirectory, getFilteredDirectory, getEntrepreneurships, deleteEntrepreneurship, addOrUpdateEntrepreneurship };
export default objExport;