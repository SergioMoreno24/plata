import http from '../../httpcommon/http-common';

const getNavbar = (token) => {
    return http.reqtok(token).get(`menus/navbar.php`);
};

const objExport = { getNavbar };
export default objExport;