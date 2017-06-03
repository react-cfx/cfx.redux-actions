#!/usr/bin/env coffee
{
  log
  error
} = console
echo = log

require 'shelljs/make'
dd = require 'ddeyes'

{
  toActionsTypes
} = require 'cfx.redux-types'

{
  createActions
} = require '../index'

target.all = ->

  { actions } = toActionsTypes { 'HELLO_WORLD' }

  dd actions

  { helloWorld } = createActions actions

  dd helloWorld 'cfx'
