import React from 'react';
import { Link } from 'react-router-dom';
import './NavBar.css'
interface NavBarProps {}

const NavBar: React.FC = () => {
  return (
    <nav className="navbar">
      <Link to="/">Home</Link>
      <Link to="/about">About</Link>
      
    </nav>
  );
};

export default NavBar;