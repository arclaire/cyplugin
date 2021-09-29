
// module.exports.coolMethod = function (arg0, success, error) {
//     exec(success, error, 'cyplugin', 'coolMethod', [arg0]);
// };

// module.exports.add = function (arg0,  onSuccess, onError) {
//     exec(function onSuccess(){}, function onError(){}, 'cyplugin', 'add', [arg0]);
// };

// module.exports.getUserData = function (success, error) {
//     exec(success, error, 'cyplugin', 'getUserData', []);
// };


module.exports = {
    add: function (arg0, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "cyplugin", "add", [arg0]);
    },
    coolMethod: function (arg0, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "cyplugin", "coolMethod", [arg0]);
    },
    getUserData: function (arg0, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "cyplugin", "getUserData", []);
    }
};
