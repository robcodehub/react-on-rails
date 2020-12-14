import React, { useEffect, useContext } from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';

// Styled Components
import styled from 'styled-components';

import Home from './Home';
import About from './About';
import Blog from './Blog';

import { ListingsHome } from './marketplace/Listings.jsx';
import { NewListings } from './newlistings/NewListings.jsx';
import ListingPage from './listingpage/ListingPage.jsx';

import NavBar from './navbar/NavBar.jsx';

const AppDiv = styled.div`
  text-align: center;
`;

function App() {
  return (
    <AppDiv>
      <NavBar />
      <Switch>
        <Route exact path="/" component={Home} />
        <Route path="/listing/:id" component={ListingPage} />
        <Route path="/newlistings" component={NewListings} />
        <Route exact path="/marketplace" component={ListingsHome} />
        <Route exact path="/marketplace" component={ListingsHome} />
        <Route exact path="/about" component={About} />
        <Route exact path="/blog" component={Blog} />
      </Switch>
    </AppDiv>
  );
}

export default App;
