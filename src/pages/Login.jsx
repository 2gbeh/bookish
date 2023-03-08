import "../styles/App.css";

import _checked from "../assets/icons/checked.png";
import _envelope from "../assets/icons/envelope.png";
import _padlock from "../assets/icons/padlock.png";
import _uncheck from "../assets/icons/unchecked.png";

import React from "react";
import { Link } from "react-router-dom";
import { AuthLayout } from "../components/layouts";
import { useLogin } from "../hooks/useLogin";

export default function Login({ setAuthState, setUser }) {
  const {
    email,
    setEmail,
    password,
    setPassword,
    emailError,
    setEmailError,
    passwordError,
    setPasswordError,
    showPassword,
    setShowPassword,
    //
    handleEmailBlur,
    handlePasswordBlur,
    handleShowPasswordClick,
  } = useLogin();

  return (
    <AuthLayout>
      <h4 className="text-sm">Connectez-vous à</h4>
      <p className="text-sm text-gray-400 py-1">
        Entrez vos informations de connexion
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
        <div className="my-4">
          <div className="flex items-center justify-center bg-gray-100">
            <img src={_padlock} alt="" className="h-6 w-6 mx-1" />
            <input
              value={password}
              required
              onChange={(e) => setPassword(e.target.value)}
              className="w-full border-2 border-gray-100 p-2 mt-1 bg-gray-100 outline-none"
              placeholder="Votre mot de passe"
              type={showPassword ? "text" : "password"}
              onBlur={handlePasswordBlur}
            />
            <button
              type="button"
              onClick={handleShowPasswordClick}
              className="mx-1"
            >
              {showPassword ? (
                <img src={_checked} alt="" />
              ) : (
                <img src={_uncheck} alt="" />
              )}
            </button>
          </div>
          {passwordError && (
            <span className="text-[#A47643] text-sm py-1">{passwordError}</span>
          )}
        </div>

        <div className="my-2">
          <input type="checkbox" id="remember" />
          <label className="ml-2 text-gray-400 text-sm" for="remember">
            Se souvenir de moi
          </label>
        </div>
        <div className="my-3 flex flex-col gap-y-4">
          <button className="active:scale-[.98] active:duration-75 transition-all hover:scale-[1.01]  ease-in-out transform py-4 bg-[#A47643] rounded-md text-white font-bold text-sm">
            Suscrire
          </button>
        </div>
      </form>

      <div className="text-center py-2">
        <Link to="/forgot-password" className="text-[#A47643] text-md">
          Mot de passe oublié?
        </Link>
      </div>

      <div className="mt-4 flex justify-center items-center">
        <p className="text-sm text-gray-400">Vous n’avez pas de compte ?</p>
        <Link
          to="/register"
          className="ml-2 font-medium text-sm text-[#A47643]"
        >
          S’enregistrer
        </Link>
      </div>
    </AuthLayout>
  );
}
