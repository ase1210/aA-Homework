import React from 'react';
import GiphysIndex from './giphys_index';
import configureStore from '../store/store';
import fetchSearchGiphys from '../util/api_util';
import { receiveSearchGiphys } from '../actions/giphy_actions';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  const store = configureStore();
  window.store = store;
  window.fetchSearchGiphys = fetchSearchGiphys;
  window.receiveSearchGiphys = receiveSearchGiphysj;
});