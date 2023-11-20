import React, { useState } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import NavBar from './components/NavBar';
import Banner from './components/Banner';
import About from './components/About';
import Projects from './components/Projects';
import Contact from './components/Contact';
import SignUp from './components/SingUp';
import SignIn from './components/SingIn';
import Footer from './components/Footer';
import './App.css';

const App: React.FC = () => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  const handleSignOut = () => {
    setIsAuthenticated(false);
  };

  return (
    <Router>
      <>
        <NavBar isAuthenticated={isAuthenticated} onSignOut={handleSignOut} />
        <Banner />
        <Routes>
          {/* <Route path="/" element={<Banner />} />
          <Route path="/about" element={<About />} />
          <Route path="/projects" element={<Projects />} />
          <Route path="/contact" element={<Contact />} /> */}
          <Route path='/login' element={<SignIn onSignIn={() => {}} />} />
          <Route path='/signup' element={<SignUp onSignUp={() => {}} />} />
        </Routes>
        <About />
        <Projects />
        <Contact />
        <Footer />
      </>
    </Router>
  );
};

export default App;
