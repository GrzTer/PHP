import React, { useState, useEffect } from 'react';
import './NavBar.css';

interface NavBarProps {
  isAuthenticated: boolean;
  onSignOut: () => void;
}

const NavBar: React.FC<NavBarProps> = ({ isAuthenticated, onSignOut }) => {
  const [isNavBarFixed, setIsNavBarFixed] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      const scrollPosition = window.scrollY;
      setIsNavBarFixed(scrollPosition > 0);
    };

    window.addEventListener('scroll', handleScroll);

    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  return (
    <nav className={`NavBar ${isNavBarFixed ? 'fixed' : ''}`}>
      <div className="logo">Portfolio</div>
      <ul className="nav-links">
        <a href="/#home"><li>Home</li></a>
        <a href="/#about"><li>About</li></a>
        <a href="/#projects"><li>Projects</li></a>
        <a href="/#contact"><li>Contact</li></a>
        {isAuthenticated ? (
          <li onClick={onSignOut}>Sign Out</li>
        ) : (
          <>
            <li onClick={() => console.log('Sign In')}>Sign In</li>
            <a href="/signup"><li onClick={() => console.log('Sign Up')}>Sign Up</li></a>
          </>
        )}
      </ul>
    </nav>
  );
};

export default NavBar;
