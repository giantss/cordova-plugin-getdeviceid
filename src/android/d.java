package com.giants.deviceInfo;


public class DeviceInfo extends CordovaPlugin{

    @Override
    public boolean execute(String action, CordovaArgs args,
                           final CallbackContext callbackContext) throws JSONException {

        this.callbackContext = callbackContext;
        if (action.equals("getDeviceId")) {

            return  getDeviceId(args,callbackContext);

        }
        return super.execute(action, args, callbackContext);
    }


}
