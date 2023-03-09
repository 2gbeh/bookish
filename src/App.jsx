import "./styles/App.css";

import { Route, Routes } from "react-router-dom";

import {
  //
  Login,
  Register,
  ForgotPassword,
  VerifyEmail,
  //
  UserDashboard,
  //
  NotFound,
} from "./pages";

export default function App() {
  return (
    <div className="App">
      <Routes>
        {/*  */}
        <Route exact path="/" element={<Login />} />
        <Route path="/register" element={<Register />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />
        <Route path="/verify-email" element={<VerifyEmail />} />
        {/*  */}
        <Route path="/user/dashboard" element={<UserDashboard />} />
        {/*  */}
        <Route path="*" element={<NotFound />} />
      </Routes>
    </div>
  );
}
