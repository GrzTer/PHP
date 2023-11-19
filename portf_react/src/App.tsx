import React from 'react';
import { BrowserRouter as Router, Route} from 'react-router-dom';
import NavBar from './components/NavBar';
import Home from './components/Home';
import About from './components/About';

const App: React.FC = () => {
  return (
    <Router>
      <NavBar />
        <Route path="/" Component={Home} />
        <Route path="/about" Component={About} />
        {/* Add more routes as needed */}
    </Router>
  );
};

export default App;