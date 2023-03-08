import { useState, useEffect } from "react";

export const useLogin = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [emailError, setEmailError] = useState("");
  const [passwordError, setPasswordError] = useState("");
  const [showPassword, setShowPassword] = useState(false);

  const handleEmailBlur = () => {
    if (!email) {
      setEmailError("Email requis");
    } else if (!/\S+@\S+\.\S+/.test(email)) {
      setEmailError("Format d'email invalide");
    } else {
      setEmailError("");
    }
  };

  const handlePasswordBlur = () => {
    if (!password) {
      setPasswordError("Mot de passe requis");
    } else if (password.length < 8) {
      setPasswordError("Le mot de passe doit comporter au moins 8 caractères");
    } else {
      setPasswordError("");
    }
  };

  const handleShowPasswordClick = () => {
    setShowPassword(!showPassword);
  };

  return {
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
  };
};
