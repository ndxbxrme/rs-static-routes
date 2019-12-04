'use strict'
path = require 'path'

module.exports = (config) ->
  (rs) ->
    setTimeout ->
      rs.use '/app', rs.static path.join rs.base, 'build', 'client', 'app'
      rs.use '/public', rs.static path.join rs.base, 'public'
      rs.all '/*', (req, res) ->
        res.sendFile 'index.html', root: path.join rs.base, 'build', 'client'