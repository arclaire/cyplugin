@objc(cyplugin) class cyplugin : CDVPlugin{
    
    // MARK: Properties
    var pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
    
    //This method is called when the plugin is initialized; plugin setup methods got here
    override func pluginInitialize() {
        super.pluginInitialize();
        
    }
    
    
    @objc(add:) func add(_ command: CDVInvokedUrlCommand?) {
        var pluginResult: CDVPluginResult? = nil
        let echo = command?.arguments[0] as? String
        if let _ = echo{
            let vc:ViewController = ViewController()
            let viewController = UIApplication.shared.windows.first?.rootViewController
            let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            viewController!.present(alert, animated: true)
            
        } else {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
        }
        
        commandDelegate.send(pluginResult, callbackId: command?.callbackId)
        commandDelegate.send(pluginResult, callbackId: command?.callbackId)
    }
    
    @objc(coolMethod:) func coolMethod(_ command: CDVInvokedUrlCommand?) {
        var pluginResult: CDVPluginResult? = nil
        let echo = command?.arguments[0] as? String
        if let _ = echo{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "controllerId") as! ViewController
            let viewController = UIApplication.shared.windows.first?.rootViewController
            let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            viewController!.present(vc, animated: true)
            
        } else {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
        }
        
        commandDelegate.send(pluginResult, callbackId: command?.callbackId)
    }
    
    @objc(getUserData:) func getUserData(_ command: CDVInvokedUrlCommand?) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var pluginResult: CDVPluginResult? = nil
        let echo = command?.arguments[0] as? String
        if let _ = echo{
            let vc:ViewController = ViewController()
            let viewController = UIApplication.shared.windows.first?.rootViewController
            let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            viewController!.present(alert, animated: true)
            
        } else {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
        }
        
        commandDelegate.send(pluginResult, callbackId: command?.callbackId)
        commandDelegate.send(pluginResult, callbackId: command?.callbackId)
    }
}
