import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signup(_ sender: Any) {
        Auth.auth().createUser(withEmail: "test@gmail.com", password: "555555", completion: { (user,error) in
            print("作成成功")
        })
    }
    
}

