//
//  SignupVC.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 02/04/24.
//

import UIKit
import MotionToastView

class SignupVC: UIViewController {

    @IBOutlet weak var confirmpasswordTf: ShadowTextField!
    @IBOutlet weak var passwordTf: ShadowTextField!
    @IBOutlet weak var emailTf: ShadowTextField!
    @IBOutlet weak var nameTf: ShadowTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSignup(_ sender: Any) {
        checkValidation()
    }
    
    @IBAction func onClickLogin(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func checkValidation() {
        let (status, error) = SignupViewModel.shared.textHandler(model: signupValidation.init(name: nameTf.text, email: emailTf.text, password: passwordTf.text, confirmPassword: confirmpasswordTf.text))
        if status {
            print("validation is done")
        } else {
            MotionToast(message: error, toastType: .error)
        }
    }
    
}
