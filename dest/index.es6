// Generated by CoffeeScript 2.0.0-beta2
var createAction, createActions, dd, echo, reduxActions;

reduxActions = require('redux-actions');

({createAction} = reduxActions);

dd = require('ddeyes');

echo = console.log;

createActions = function(config) {
  var actionMap, identityActions, k, v;
  actionMap = {};
  identityActions = [];
  for (k in config) {
    v = config[k];
    if (typeof v === 'string') {
      identityActions.push(v);
    } else {
      actions[k] = v;
    }
  }
  return reduxActions.createActions.apply(this, [actionMap, ...identityActions]);
};

export default {reduxActions, createActions};