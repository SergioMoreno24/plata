import http from '../../httpcommon/http-common';

const getRepo = (token) => {
    return http.reqtok(token).get(`repository/repository.php`);
};

const objExport = { getRepo };
export default objExport;