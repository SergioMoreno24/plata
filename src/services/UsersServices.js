import http from '../http-common';

const getUsers = (tok) => {
    return http.get(`users.php?tok=${tok}`);
};

const getUserData = (data) => {
    return http.post(`userData.php`, data);
};

const getProfile = (data) => {
    return http.post(`getProfile.php`, data);
};

const updateProfile = (data) => {
    return http.post(`updateProfile.php`, data);
};
const updateProfileA = (data) => {
    return http.post(`updateProfileA.php`, data);
};

const getLocations = (data) => {
    return http.post(`getLocations.php`, data);
};

const objExport = { getUsers, getProfile, updateProfile, updateProfileA, getUserData, getLocations };
export default objExport;