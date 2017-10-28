import 'shelljs/make'
import dd from 'ddeyes'

import { toActionsTypes } from 'cfx.redux-types'
import { createActions } from '../dist/bundle'

target.all = ->

  { actions } = toActionsTypes {
    'HELLO_WORLD'
  }

  dd actions

  { helloWorld } = createActions actions

  dd helloWorld 'cfx'
