var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'cyplugin', 'coolMethod', [arg0]);
};

var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'cyplugin', 'coolMethod', [arg0]);
};

module.exports.add = function (arg0, success, error) {
    exec(success, error, 'cyplugin', 'add', [arg0]);
};

module.exports.getUserData = function (success, error) {
    exec(success, error, 'cyplugin', 'getUserData', []);
};