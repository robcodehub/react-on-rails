import React from 'react';
import { Route, Switch } from 'react-router-dom';

// Axios and Styled Components
import axios from 'axios';
import styled from 'styled-components';

import Home from './Home';
import About from './About';
import Contact from './Contact';

import NavBar from './navbar/NavBar.jsx';

const AppDiv = styled.div`
  text-align: center;
`;

class App extends React.Component {
  render() {
    return (
      <div>
        <NavBar />
        <Switch>
          <Route exact path="/" component={Home} />
          <Route exact path="/about" component={About} />
          <Route exact path="/contact" component={Contact} />
        </Switch>
      </div>
    );
  }
}

export default App;
