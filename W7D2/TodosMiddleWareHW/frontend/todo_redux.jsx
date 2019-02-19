import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

// const addLoggingToDispatch = (store) => next => action => {
//   console.log(store.getState());
//   console.log(action);
//   let step = next(action);
//   console.log(store.getState());
//   return step;
// };

// const applyMiddlewares = (store, ...wares) => {
//   let dispatch = store.dispatch;
//   wares.forEach(ware => {
//     dispatch = ware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };


document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
