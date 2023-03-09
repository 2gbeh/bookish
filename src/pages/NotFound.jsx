import "../styles/App.css";

import React from "react";
import { useNavigate } from "react-router-dom";

export default function NotFound({ setAuthState, setUser }) {
  let navigate = useNavigate();

  return (
    <div className="text-center">
      <p>&nbsp;</p>
      <h1>
        <b>404 Not Found</b>
      </h1>
      <p>&nbsp;</p>
      <a
        href="#"
        onClick={() => navigate(-1)}
        className="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800"
      >
        Back
      </a>
    </div>
  );
}
