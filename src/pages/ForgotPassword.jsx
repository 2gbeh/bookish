import "../styles/App.css";

import _envelope from "../assets/icons/envelope.png";

import React from "react";
import { Link } from "react-router-dom";
import { AuthLayout } from "../components/Layout";
import { useForgotPassword } from "../hooks/useForgotPassword";

export default function ForgotPassword({ setAuthState, setUser }) {
  const {
    email,
    setEmail,
    emailError,
    setEmailError,
    //
    handleEmailBlur,
  } = useForgotPassword();

  return (
    <AuthLayout>
      <h4 className="text-sm">Mot de passe oublié </h4>
      <p className="text-sm text-gray-400 py-1">
        Entrez votre adresse e-mail pour continuer
      </p>
      <form>
        <div className="my-4">
          <div className="flex items-center justify-center bg-gray-100">
            <img src={_envelope} alt="" className="h-6 w-6 mx-1" />
            <input
              value={email}
              required
              onChange={(e) => setEmail(e.target.value)}
              className="w-full border-2 border-gray-100 p-2 mt-1 bg-gray-100 outline-none"
              placeholder="votre email"
              type={"email"}
              onBlur={handleEmailBlur}
            />
          </div>
          {emailError && (
            <span className="text-[#A47643] text-sm py-1">{emailError}</span>
          )}
        </div>
        <div className="my-3 flex flex-col gap-y-4">
          <button className="active:scale-[.98] active:duration-75 transition-all hover:scale-[1.01]  ease-in-out transform py-4 bg-[#A47643] rounded-md text-white font-bold text-sm">
            Reinitialiser le mot de passe
          </button>
        </div>
      </form>

      <div className="text-center py-2">
        <Link to="/" className="text-[#A47643] text-md">
          Aller à Connexion
        </Link>
      </div>
    </AuthLayout>
  );
}
