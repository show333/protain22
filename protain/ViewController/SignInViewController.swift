//
//  SignIn.swift
//  protain
//
//  Created by 平田翔大 on 2021/02/07.
//

import UIKit
import Firebase
import FirebaseAuth
class SignInViewController: UIViewController {
    @IBOutlet weak var SigninTextField: UITextField!
    
    @IBOutlet weak var InButton: UIButton!
    
    @IBAction func tappedButton(_ sender: Any) {
        
        guard  let email = SigninTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email + "@2.years", password: "ONELIFE") { (res, err) in
            if let err = err {
                print("ログイン失敗、、、:", err)
                return
            }
            print("ログイン成功！")
            self.dismiss(animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
