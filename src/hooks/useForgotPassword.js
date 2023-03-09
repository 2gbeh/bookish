import { useState, useEffect } from "react";

export const useForgotPassword = () => {
  const [email, setEmail] = useState("");

  const [emailError, setEmailError] = useState("");

  const handleEmailBlur = () => {
    if (!email) {
      setEmailError("Email requis");
    } else if (!/\S+@\S+\.\S+/.test(email)) {
      setEmailError("Invalid email format");
    } else {
      setEmailError("");
    }
  };

  return {
    email,
    setEmail,
    emailError,
    setEmailError,
    // 
    handleEmailBlur,
  };
};
