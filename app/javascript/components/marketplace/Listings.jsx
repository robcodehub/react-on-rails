import React, { useEffect, useContext, useState } from 'react';
import axios from 'axios';
import styled from 'styled-components';

import { AllListingsContext } from '../../context/ListingsContext.jsx';
import ListingDisplay from './ListingDisplay.jsx';

export const Grid = styled.div`
  font-family: 'Helvetica';
`;

const LoadingDiv = styled.div`
  margin-top: 4rem;
  padding-top: 4rem;
`;

export const ListingsHome = () => {
  const [allListings, setAllListings] = useContext(AllListingsContext);

  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (
      allListings === undefined ||
      allListings[0].listing_status === 'loading'
    )
      axios
        .get(
          'https://cors-anywhere.herokuapp.com/https://api.empireflippers.com/api/v1/listings/list?page=1&limit=90&listing_status=For%20Sale'
        )
        .then((response) => {
          setAllListings([...response.data.data.listings]);
          setLoading(false);
        });

    if (allListings[0].listing_status !== 'loading') {
      setLoading(false);
    }
  }, [allListings, setAllListings]);

  return allListings.length > 1 && loading === false ? (
    <div key="listings">
      <h2>Listings</h2>
      <ListingDisplay listings={allListings} loading={loading} />
    </div>
  ) : (
    <LoadingDiv>
      <div></div>
      <div>
        <h1>Loading Listings...</h1>
      </div>
    </LoadingDiv>
  );
};
