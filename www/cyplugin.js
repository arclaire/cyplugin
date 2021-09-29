var exec = require('cordova/exec');

module.exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'cyplugin', 'coolMethod', [arg0]);
};

module.exports.add = function (arg0,  adddsuccess, error) {
    exec(function onSuccess(){}, function onError(){}, 'cyplugin', 'add', [arg0]);
};

module.exports.getUserData = function (success, error) {
    exec(success, error, 'cyplugin', 'getUserData', []);
};

// var exec = require('cordova/exec');

// var PLUGIN_NAME = "cyplugin"; // This is just for code completion uses.

// var YourPluginName = function() {}; 

// YourPluginName.coolMethod = function(onSuccess, onError) {
//    exec(onSuccess, onError, PLUGIN_NAME, "coolMethod", [arg0]);
// };

// YourPluginName.add = function(onSuccess, onError) {
//     exec(onSuccess, onError, PLUGIN_NAME, "add", [arg0]);
//  };

//  YourPluginName.getUserData = function(onSuccess, onError) {
//     exec(onSuccess, onError, PLUGIN_NAME, "getUserData", []);
//  };

// module.exports = YourPluginName;