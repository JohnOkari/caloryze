import React from "react";
import { Link } from "react-router-dom"
import LogoutButton from "../logout/LogoutButton";
import "./topbar.css";

function Topbar() {
  return (
    <div className="top">
       <h1 className="logo">Caloryze</h1>
      <div className="topLeft">
        <i className="topIcon fa-brands fa-twitter"></i>
        <i className="topIcon fa-brands fa-linkedin"></i>
        <i className="topIcon fa-brands fa-facebook"></i>
        <i className="topIcon fa-brands fa-square-instagram"></i>
      </div>
      <div className="topCenter">
        <ul className="topList">
          {/* <Link to="/" className="topListItem"> HOME</Link> */}
          {/* <Link to="/register" className="topListItem"> SIGNUP</Link> */}
          {/* <Link to="/write" className="topListItem"> WRITE BLOG</Link> */}
          {/* <LogoutButton/> */}
        </ul>
      </div>
      <div className="topRight">
          <Link to="/" className="topListItem"> HOME</Link> 
          <Link to="/about" className="topListItem"> ABOUT</Link>
          <Link to="/login" className="topListItem"> LOGIN</Link>
          <LogoutButton/>
      </div>
    </div>
  );
}

export default (Topbar);