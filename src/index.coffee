reduxActions = require 'redux-actions'
{ createAction } = reduxActions

exports.reduxActions = reduxActions
exports.createActions = (config) ->
  actions = {}
  for k, v of config
    actions[k] = createAction v
  actions
