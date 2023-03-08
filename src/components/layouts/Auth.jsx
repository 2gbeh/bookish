import React from "react";

const Auth = ({ children }) => {
  return (
    <div
      className={`relative flex item-center justify-center bg-[url('/src/assets/svg/backdrop.svg')] w-full h-screen`}
    >
      <div className="w-full m-5 flex items-center justify-center lg:w-1/3">
        <div className=" w-11/12 max-w-[700px] px-10 py-10 rounded-3xl bg-white border-2 border-gray-100">
          {children}
        </div>
      </div>
    </div>
  );
};

export default Auth;
