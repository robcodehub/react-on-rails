// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react';
import ReactDOM from 'react-dom';
import GlobalStyle from '../styles/GlobalStyle.js';
import { BrowserRouter as Router, Route } from 'react-router-dom';

import { ListingsContextProvider } from '../context/ListingsContext.jsx';

import App from '../components/App';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <>
      <GlobalStyle />
      <Router>
        <ListingsContextProvider>
          <Route path="/" component={App} />
        </ListingsContextProvider>
      </Router>
    </>,
    document.body.appendChild(document.createElement('div'))
  );
});
