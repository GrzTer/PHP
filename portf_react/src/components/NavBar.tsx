import React, { useState, useEffect } from 'react';
import './NavBar.css';
import { Button } from 'react-bootstrap';

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
        <a href="/#home"><li><Button>Home</Button></li></a>
        <a href="/#about"><li><Button>About</Button></li></a>
        <a href="/#projects"><li><Button>Projects</Button></li></a>
        <a href="/#contact"><li><Button>Contact</Button></li></a>
        {isAuthenticated ? (
          <li onClick={onSignOut}>Sign Out</li>
        ) : (
          <>
            <li onClick={() => console.log('Sign In')}><Button>Sign In</Button></li>
            <a href="/signup"><li onClick={() => console.log('Sign Up')}><Button>Sign Up</Button></li></a>
          </>
        )}
      </ul>
    </nav>
  );
};

export default NavBar;
