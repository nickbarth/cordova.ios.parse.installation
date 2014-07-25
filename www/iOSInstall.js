var exec = require('cordova/exec');

var iOSInstall = function(callback) {
  exec(callback, callback, 'iOSInstall', 'iOSInstall', []);
};

module.exports = iOSInstall;
