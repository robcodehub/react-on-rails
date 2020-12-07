import React, { useEffect, useContext } from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';

// Axios and Styled Components
import axios from 'axios';
import styled from 'styled-components';

import Home from './Home';
import About from './About';
import Contact from './Contact';

// import { NewListingsContext } from '../context/ListingsContext.jsx';

import { ListingsHome } from './marketplace/Listings.jsx';
import { NewListings } from './newlistings/NewListings.jsx';
import ListingPage from './listingpage/ListingPage.jsx';

import NavBar from './navbar/NavBar.jsx';

const AppDiv = styled.div`
  text-align: center;
`;

function App() {
  // const [allNewListings, setAllNewListings] = useContext(NewListingsContext);

  // useEffect(() => {
  //   if (
  //     allNewListings === undefined ||
  //     allNewListings[0] === undefined ||
  //     allNewListings[0].listing_status === 'loading'
  //   ) {
  //     axios
  //       .get(
  //         'https://cors-anywhere.herokuapp.com/https://api.empireflippers.com/api/v1/listings/list?new_listing=true'
  //       )
  //       .then((response) => {
  //         setAllNewListings([...response.data.data.listings]);
  //       });
  //   }
  // }, [allNewListings, setAllNewListings]);

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
        <Route exact path="/contact" component={Contact} />
      </Switch>
    </AppDiv>
  );
}

export default App;
