import React from 'react';
import './Contact.css';
// import navic1 from '../assets/img/github-svgrepo-com.svg';
// import navic2 from '../assets/img/gmail-svgrepo-com.svg';
// import navic3 from '../assets/img/gmail-svgrepo-com.svg';
const Contact: React.FC = () => {
  return (
    <div className="contact" id='contact'>
      <h2>Contact</h2>
      <p>Feel free to reach out to me:</p>
      <ul>
        <a href={"mailto:devgreg2021@gmail.com"}><li>Email: example@email.com</li></a>
        <a href='https://infotechedu.slack.com/team/U02CRHJ2A68'><li>Slack: Grzegorz Tereszkiewicz</li></a>
        <a href='https://github.com/GrzegorzTwicz'><li>GitHub: github.com/GrzegorzTwicz</li></a>
      </ul>
    </div>
  );
};

export default Contact;