import React from 'react';
import { Routes ,Route } from 'react-router-dom';
import NonProtectedView from '../containers/NonProtectedView';
import ProtectedView from '../containers/ProtectedView';
import Index from '../views/Index.js';
import Register from '../views/Register.js';
import ForgotPass from '../views/ForgotPass';
import RecoverPass from '../views/RecoverPass';
import Home from '../views/Home';
import Alumni from '../views/Alumni';
import Community from '../views/Community';
import Oportunities from '../views/Oportunities';
import Linkup from '../views/Linkup';
import News from '../views/News';
import NewsA from '../views/NewsA';
import Profile from '../views/Profile';
import JobBank from '../views/JobBank';
import JobBankOrg from '../views/JobBankOrg';
import Admin from '../views/Admin';

const Main = () => {
  const index = process.env.REACT_APP_HOMEPAGE;
  return (
    <section className='bg-gray-50'>
        <Routes>
            <Route path={`${index}`} element={<NonProtectedView><Index/></NonProtectedView>} />   
            <Route path={`${index}registro`} element={<NonProtectedView><Register/></NonProtectedView>} />   
            <Route path={`${index}olvide`} element={<NonProtectedView><ForgotPass/></NonProtectedView>} />
            <Route path={`${index}recuperar/:c`} element={<NonProtectedView><RecoverPass/></NonProtectedView>} />

            <Route path={`${index}inicio`} element={<ProtectedView allowedTypes={ ['1', '2'] }><Home/></ProtectedView>} />   
            <Route path={`${index}ser-alumni/*`} element={<ProtectedView allowedTypes={ ['1', '2'] }><Alumni/></ProtectedView>} />   
            <Route path={`${index}comunidad/*`} element={<ProtectedView allowedTypes={ ['1', '2'] }><Community/></ProtectedView>} />   
            <Route path={`${index}oportunidades/*`} element={<ProtectedView allowedTypes={ ['1', '2'] }><Oportunities/></ProtectedView>} />   
            <Route path={`${index}bt/*`} element={<ProtectedView allowedTypes={ ['1', '2'] }><JobBank/></ProtectedView>} />   
            <Route path={`${index}bt-org/*`} element={<ProtectedView allowedTypes={ ['1', '3'] }><JobBankOrg/></ProtectedView>} />   
            <Route path={`${index}bolsa-trabajo`} element={<ProtectedView allowedTypes={ ['1', '2'] }><Home/></ProtectedView>} />   
            <Route path={`${index}vinculate`} element={<ProtectedView allowedTypes={ ['1', '2'] }><Linkup/></ProtectedView>} />   
            {/* <Route path={`${index}noticias/*`} element={<ProtectedView allowedTypes={ ['1', '2'] }><News/></ProtectedView>} />    */}
            <Route path={`${index}noticias`} element={<ProtectedView allowedTypes={ ['1', '2'] }><NewsA/></ProtectedView>} />   
            <Route path={`${index}perfil`} element={<ProtectedView allowedTypes={ ['1', '2'] }><Profile/></ProtectedView>} />   
            <Route path={`${index}admin/*`} element={<ProtectedView allowedTypes={ ['1'] }><Admin/></ProtectedView>} />   
        </Routes>
    </section>
  )
}

export default Main;