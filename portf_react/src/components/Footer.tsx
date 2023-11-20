import React from 'react';
import './Footer.css';

const Footer: React.FC = () => {
  return (
    <div className="footer">
      <p>
        © {new Date().getFullYear()} Your Company | Made with{' '} by{' '}
        <a href="" target="_blank" rel="noopener noreferrer">
          Grzegorz Tereszkiewicz
        </a>
      </p>
    </div>
  );
};

export default Footer;