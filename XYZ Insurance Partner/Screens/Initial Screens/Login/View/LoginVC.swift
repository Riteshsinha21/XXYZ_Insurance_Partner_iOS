//
//  LoginVC.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 01/04/24.
//

import UIKit
import MotionToastView

class LoginVC: UIViewController {

    @IBOutlet weak var passwordTf: ShadowTextField!
    @IBOutlet weak var emailTf: ShadowTextField!
    
    var isEyeClosed = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setEyeButton()
    }
    
    @IBAction func onClickForgetPassword(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordVC") as! ForgetPasswordVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickLogin(_ sender: Any) {
        checkValidation()
    }
    
    @IBAction func onClickSignup(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignupVC") as! SignupVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func checkValidation() {
        let (status, error) = LoginViewModel.shared.textfieldHandler(model: LoginValidationModel.init(email: emailTf.text, password: passwordTf.text))
        if status {
            MotionToast(message: "Login Successfull", toastType: .success)
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                // your code here
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
                UIApplication.shared.windows.first?.rootViewController = vc
                UIApplication.shared.windows.first?.makeKeyAndVisible()
            }
            
        } else {
            MotionToast(message: error, toastType: .error)
        }
    }
}

extension LoginVC {
    func setEyeButton() {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: isEyeClosed ? "eyeclose" : "eye"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
        button.frame = CGRect(x: CGFloat(passwordTf.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        button.addTarget(self, action: #selector(self.refresh), for: .touchUpInside)
        passwordTf.isSecureTextEntry = isEyeClosed ? true : false
        passwordTf.rightView = button
        passwordTf.rightViewMode = .always
    }
    
    @objc func refresh(_ sender: Any) {
        isEyeClosed = !isEyeClosed
        setEyeButton()
    }
}
