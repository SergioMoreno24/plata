import http from '../../httpcommon/http-common';

const getNewsLetters = (token, ntype) => {
    return http.reqtok(token).get(`/newsletters/newsletters.php?type=${ntype}`);
};

const storeNewsletter = (token, ntype, data) => {
    return http.reqtok(token).post(`/newsletters/storenewsletters.php`, data);
};

const objExport = { getNewsLetters, storeNewsletter };
export default objExport;