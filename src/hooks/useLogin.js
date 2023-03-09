import { useState, useEffect } from "react";
import { useAuth } from "./useAuth";
import { adminLogin } from "./useLitmus";

export const useLogin = () => {
  const [email, setEmail] = useState("");
  const [emailError, setEmailError] = useState("");
  //
  const [password, setPassword] = useState("");
  const [passwordError, setPasswordError] = useState("");
  const [showPassword, setShowPassword] = useState(false);
  //
  const [rememberMe, setRememberMe] = useState(false);

  const { login } = useAuth({
    middleware: "guest",
    redirectIfAuthenticated: "/user/dashboard",
  });

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

  const handleSubmit = async (event) => {
    event.preventDefault();

    // console.dir(email, password, rememberMe);
    // return;

    login({
      email,
      password,
      remember: rememberMe,
      // setErrors,
      // setStatus,
    });
  };

  useEffect(() => {
    adminLogin(setEmail, setPassword, setRememberMe);
  }, []);

  return {
    email,
    setEmail,
    emailError,
    password,
    setPassword,
    passwordError,
    showPassword,
    setShowPassword,
    rememberMe,
    setRememberMe,
    //
    handleEmailBlur,
    handlePasswordBlur,
    handleSubmit,
  };
};
