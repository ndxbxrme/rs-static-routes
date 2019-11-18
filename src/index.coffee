'use strict'
path = require 'path'

module.exports = (config) ->
  (rs) ->
    setTimeout ->
      rs.use '/app', rs.static './build/client/app'
      rs.all '/*', (req, res) ->
        res.sendFile 'index.html', root: path.join rs.base, 'client'