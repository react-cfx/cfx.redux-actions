reduxActions = require 'redux-actions'
{ createAction } = reduxActions

dd = require 'ddeyes'
echo = console.log

createActions = (config) ->
  actionMap = {}
  identityActions = []
  for k, v of config
    if typeof v is 'string'
    then identityActions.push v
    else actions[k] = v
  reduxActions.createActions.apply @, [
    actionMap
    identityActions...
  ]

export default {
  reduxActions
  createActions
}
