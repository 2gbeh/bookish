import "./styles/App.css";

import { Route, Routes } from "react-router-dom";

import { Login, Register, ForgotPassword, VerifyEmail  } from "./pages";

export default function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/register" element={<Register />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />
        <Route path="/verify-email" element={<VerifyEmail />} />
      </Routes>
    </div>
  );
}