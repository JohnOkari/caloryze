import { Routes, Route } from "react-router-dom";
import Topbar from './components/topbar/Topbar';
import Home from "./pages/home/Home";
import React, { useEffect, useState } from "react";
import Login from "./pages/Login";


function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (!user) return <Login onLogin={setUser} />;

  return (
    <>
    <Topbar user={user} setUser={setUser} />
    {/* <Topbar/> */}
    <Routes>
      <Route exact path="/" element={<Home user={user}/>} />
      <Route exact path="/login" element={<Login/> }/>
    </Routes>
    </>
  );
}

export default App;
