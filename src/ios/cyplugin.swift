@objc(cyplugin) class cyplugin : CDVPlugin{
    
    // MARK: Properties
    var pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
    var strCallbackID: String?
    var alertplugin: UIAlertController?
    //This method is called when the plugin is initialized; plugin setup methods got here
    override func pluginInitialize() {
        super.pluginInitialize();
        
    }
    
    
    @objc(add:) func add(_ command: CDVInvokedUrlCommand?) {
        var pluginResult: CDVPluginResult? = nil
        self.strCallbackID = command?.callbackId
        
        print("ECHO",command?.arguments[0])
        if let echo = command?.arguments[0] as? NSDictionary {
            var strTitle = ""
            var strMessage = ""
            if let age  = echo.object(forKey: "age") {
                strMessage =  "your age : \(age)"
            }
            if let name = echo.object(forKey: "name") {
                strTitle = "Are you \(name)"
            }
            
            print("ECHO",echo)
            
            let alert = UIAlertController(title: strTitle, message: strMessage, preferredStyle: .alert)
           
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
                let strConfirm = "User confirmed data correct"
                UserDefaults.standard.set(strConfirm, forKey: "userInput1")
                UserDefaults.standard.synchronize()
                pluginResult = CDVPluginResult(status: .ok, messageAs: strConfirm)
                pluginResult?.setKeepCallbackAs(true)
                alert.dismiss(animated: true, completion: {
                    self.commandDelegate.send(pluginResult, callbackId: self.strCallbackID)
                })
                
                
            }))
            
            alert.addAction(UIAlertAction(title: "No", style: .default, handler: { (action: UIAlertAction!) in
                let strConfirm = "Data is  incorrect"
                UserDefaults.standard.set(strConfirm, forKey: "userInput1")
                UserDefaults.standard.synchronize()
                
                pluginResult = CDVPluginResult(status: .error, messageAs: strConfirm)
                pluginResult?.setKeepCallbackAs(true)
                alert.dismiss(animated: true, completion: {
                    self.commandDelegate.send(pluginResult, callbackId: self.strCallbackID)
                })
            }))
            
            viewController!.present(alert, animated: true)
            
            
        } else {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
            commandDelegate.send(pluginResult, callbackId: command?.callbackId)
        }
        
       
        
        
    }
    
    @objc(coolMethod:) func coolMethod(_ command: CDVInvokedUrlCommand?) {
        var pluginResult: CDVPluginResult? = nil
        let echo = command?.arguments[0] as? String
        if let _ = echo{
            let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "controllerId") as! ViewController
            let viewController = UIApplication.shared.windows.first?.rootViewController as? UINavigationController
            let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            //viewController!.present(vc, animated: true)
            viewController?.pushViewController(vc, animated: true)
            pluginResult = CDVPluginResult(status: .ok, messageAs: "User confirmed data correct")
            
        } else {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
        }
        
        commandDelegate.send(pluginResult, callbackId: command?.callbackId)
    }
    
    @objc(getUserData:) func getUserData(_ command: CDVInvokedUrlCommand?) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var pluginResult: CDVPluginResult? = nil
        let str = UserDefaults.standard.string(forKey: "userInput1")
        print("USD", str)
        pluginResult = CDVPluginResult(status: CDVCommandStatus.ok, messageAs: str)
       
        
        commandDelegate.send(pluginResult, callbackId: command?.callbackId)
        
    }
    
    
}
