import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signup(_ sender: Any) {
        #if PRODUCT
        Auth.auth().createUser(withEmail: "prod@gmail.com", password: "555555", completion: { (user,error) in
            print("作成成功")
        })
        #elseif DEVELOP
        Auth.auth().createUser(withEmail: "dev@gmail.com", password: "555555", completion: { (user,error) in
            print("作成成功")
        })
        #else
        print("失敗")
        #endif
    }
    
}

