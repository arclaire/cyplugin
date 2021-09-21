
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.callApi()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
      
        
    }
    //MARK: - SERVICES
    func callApi() {
        self.view.backgroundColor = UIColor.green
    }
    
    func callApiForSearch(search txt: String) {
     
    }

    
}
