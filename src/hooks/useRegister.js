import { useState, useEffect } from "react";

export const styles = {
  checked: {
    backgroundColor: "#A47643",
  },
  unchecked: {
    backgroundColor: "gray",
  },
};

export const useRegister = () => {
  const [email, setEmail] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [nameError, setNameError] = useState("");
  const [emailError, setEmailError] = useState("");
  const [passwordError, setPasswordError] = useState("");
  const [showPassword, setShowPassword] = useState(false);
  const [isChecked, setIsChecked] = useState(false);

  const handleNameBlur = () => {
    if (!username) {
      setNameError("Le nom complet est requis.");
    } else {
      setNameError("");
    }
  };

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

  const handleCheckboxChange = (event) => {
    setIsChecked(event.target.checked);
  };

  return {
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
  };
};
