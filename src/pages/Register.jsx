import "../styles/App.css";

import _checked from "../assets/icons/checked.png";
import _envelope from "../assets/icons/envelope.png";
import _padlock from "../assets/icons/padlock.png";
import _uncheck from "../assets/icons/unchecked.png";
import _user from "../assets/icons/user.png";

import React from "react";
import { Link } from "react-router-dom";
import { AuthLayout } from "../components/Layout";
import { styles, useRegister } from "../hooks/useRegister";

export default function Register({ setAuthState, setUser }) {
  const {
    email,
    setEmail,
    username,
    setUsername,
    password,
    setPassword,
    nameError,
    setNameError,
    emailError,
    setEmailError,
    passwordError,
    setPasswordError,
    showPassword,
    setShowPassword,
    isChecked,
    setIsChecked,
    //
    handleNameBlur,
    handleEmailBlur,
    handlePasswordBlur,
    handleShowPasswordClick,
    handleCheckboxChange,
  } = useRegister();

  return (
    <AuthLayout>
      <h4 className="text-sm">Créer un compte</h4>
      <p className="py-2 text-gray-400 text-sm">
        Entrez votre adresse e-mail pour continuer
      </p>
      <form>
        <div className="my-4">
          <div className="flex items-center justify-center bg-gray-100">
            <img src={_user} alt="" className="h-6 w-6 mx-1" />
            <input
              value={username}
              required
              onChange={(e) => setUsername(e.target.value)}
              className="w-full border-2 border-gray-100 p-2 mt-1 bg-gray-100 outline-none text-gray-700 text-sm"
              placeholder="votre nom"
              type={"text"}
              onBlur={handleNameBlur}
            />
          </div>
          {nameError && (
            <span className="text-[#A47643] text-sm py-1">{nameError}</span>
          )}
        </div>
        <div className="my-4">
          <div className="flex items-center justify-center bg-gray-100">
            <img src={_envelope} alt="" className="h-6 w-6 mx-1" />
            <input
              value={email}
              required
              onChange={(e) => setEmail(e.target.value)}
              className="w-full border-2 border-gray-100 p-2 mt-1 bg-gray-100 outline-none text-gray-700 text-sm"
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
              className="w-full border-2 border-gray-100 p-2 mt-1 bg-gray-100 outline-none text-gray-700 text-sm"
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
          <input
            type="checkbox"
            id="terms"
            onChange={handleCheckboxChange}
            required
          />
          <label className="ml-2 text-gray-400 text-sm" for="terms">
            J'accepte les conditions d'utilisation
          </label>
        </div>
        <div className="my-3 flex flex-col gap-y-4">
          <button
            style={isChecked ? styles.checked : styles.unchecked}
            className="active:scale-[.98] active:duration-75 transition-all hover:scale-[1.01] ease-in-out transform py-4 rounded-md text-white font-bold text-sm"
          >
            S’enregistrer
          </button>
        </div>
      </form>

      <div className="mt-4 flex justify-center items-center">
        <p className="font-medium text-sm text-gray-400">
          Vous avez déjà un compte?
        </p>
        <Link to="/" className="ml-2 font-medium text-base text-[#A47643]">
          Suscrire
        </Link>
      </div>
    </AuthLayout>
  );
}
