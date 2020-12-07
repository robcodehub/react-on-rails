import React from 'react';
import PropTypes from 'prop-types';
import styled from 'styled-components';

import currencyFormatter from '../../../../functions/convertCurrency';

const ValuationProfitMultipleStyles = styled.div`
  grid-column-start: 2;
  grid-column-end: span 1;
  margin-top: 1rem;
  margin-bottom: 2rem;
  padding-bottom: 2rem;
`;

export default function ValuationProfitMultiple({ listing }) {
  return (
    <ValuationProfitMultipleStyles>
      <h2>{currencyFormatter.format(listing.listing_price)}</h2>
      <p>List Price</p>
      <h2>{currencyFormatter.format(listing.average_monthly_net_profit)}</h2>
      <p> Monthly Net Profit </p>
      <h2>{listing.listing_multiple} x </h2>
      <p>Multiple</p>
    </ValuationProfitMultipleStyles>
  );
}

ValuationProfitMultiple.propTypes = {
  listing: PropTypes.objectOf(PropTypes.any).isRequired,
};
