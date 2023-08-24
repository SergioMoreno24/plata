import http from '../../httpcommon/http-common';
import httpFiles from '../../httpcommon/http-common-files';

const getProfile = (token) => {
    return http.reqtok(token).get(`users/profile.php`);
};

const storeProfile = (token, data) => {
    return http.reqtok(token).post(`users/storeprofile.php`, data);
};

const changeProfilePhoto = (token, data) => {
    return httpFiles.postWithFiles(token).post(`users/changephoto.php`, data);
};

const objExport = { getProfile, storeProfile, changeProfilePhoto };
export default objExport;