/**
 * Created by Administrator on 2016/10/8.
 */
var exec = require('cordova/exec'),
    cordova = require('cordova');

module.exports = {

    getDeviceId: function (successCallback, errorCallback) {
        exec(successCallback, errorCallback, "DeviceInfo", "initAuth", []);
    }
};