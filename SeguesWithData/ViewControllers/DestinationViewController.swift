

import UIKit

class DestinationViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var text: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // when the view has loaded set the text to the
        // text received from the source view controller
        self.textLabel.text = self.text
        
    }
    

}






