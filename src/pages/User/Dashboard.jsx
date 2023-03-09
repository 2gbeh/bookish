import "../../styles/App.css";

import React from "react";
import { Link } from "react-router-dom";
import { useAuth } from "../../hooks/useAuth";

import { HostLayout } from "../../components/Layout";

export default function Dashboard({ setAuthState, setUser }) {
  const { logout, user } = useAuth({ middleware: "auth" });

  return (
    <HostLayout>
      <div className="text-center">
        <p>&nbsp;</p>
        <h1>
          <b>User Dashboard {user?.email}</b>
        </h1>
      </div>
    </HostLayout>
  );
}
