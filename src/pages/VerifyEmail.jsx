import "../styles/App.css";

import _paperPlane from "../assets/icons/paper-plane.png";

import React from "react";
import { Link } from "react-router-dom";
import { AuthLayout } from "../components/Layout";

export default function VerifyEmail({ setAuthState, setUser }) {

  return (
    <AuthLayout>
      <div className="text-center">
        <div className="flex items-center justify-center">
          <img src={_paperPlane} alt="" className="h-10 w-10 my-2" />
        </div>
        <h4 className="text-xl my-2">Vérifiez votre e-mail</h4>
        <p className="text-sm text-gray-500 py-1">
          un e-mail a été envoyé à branduser@gmail.com avec un lien pour valider
          votre compte ou définir votre mot de passe.
        </p>
        <div className="my-3 flex flex-col gap-y-4">
          <button className="active:scale-[.98] active:duration-75 transition-all hover:scale-[1.01]  ease-in-out transform py-4 bg-[#A47643] rounded-md text-white font-bold text-sm">
            renvoyer le courrier
          </button>
        </div>
        <p className="text-sm text-gray-500 py-1">
          Si vous n'avez pas reçu le mail après quelques minutes, veuillez
          vérifier votre dossier spam
        </p>
        <div className="text-center py-2">
          <Link to="/" className="text-[#A47643] text-md">
            Aller à Connexion
          </Link>
        </div>
      </div>
    </AuthLayout>
  );
}
