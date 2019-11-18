(function() {
  'use strict';
  var path;

  path = require('path');

  module.exports = function(config) {
    return function(rs) {
      return setTimeout(function() {
        rs.use('/app', rs.static('./build/client/app'));
        return rs.all('/*', function(req, res) {
          return res.sendFile('index.html', {
            root: path.join(rs.base, 'client')
          });
        });
      });
    };
  };

}).call(this);

//# sourceMappingURL=index.js.map
