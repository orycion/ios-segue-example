

import UIKit

class DestinationViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    lazy var segue = SegueManager(self)
    
    var text: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // when the view has loaded set the text to the
        // text received from the source view controller
        self.textLabel.text = self.text
        
    }
    
    @IBAction func onClick(_ sender: Any) {
        self.segue.performSegue(withIdentifier: "secondDestination", sender: self) { nextController in
            let controller = nextController as! SecondDestinationViewController
            controller.text = "Wahey the new method works"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.segue.prepare(for: segue, sender: sender)
    }

}






