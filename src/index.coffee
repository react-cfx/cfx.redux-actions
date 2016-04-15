reduxActions = require 'redux-actions'
{ createAction } = reduxActions

module.exports = reduxActions
exports.createActions = (config) ->
  actions = {}
  for k, v of config
    actions[k] = createAction v
  actions
