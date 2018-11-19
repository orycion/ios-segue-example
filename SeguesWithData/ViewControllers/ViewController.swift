

import UIKit

class ViewController: UIViewController {

    @IBAction func onClick(_ sender: Any) {
        // Create a segue in the story board with the identifier below
        self.performSegue(withIdentifier: "segueWithData", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.destination {
        case let viewController as DestinationViewController:
            // Send a string to the destination view controller
            viewController.text = "set by source controller"
        default:
            break
        }
    }
    
}








