import http from '../../httpcommon/http-common';

const getEvents = (token) => {
    return http.reqtok(token).get(`events/events.php`);
};
const storeEvent = (token, data) => {
    return http.reqtok(token).post(`events/storeevents.php`, data);
};

const objExport = { getEvents, storeEvent };
export default objExport;