//
//  ForgetPasswordVC.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 01/04/24.
//

import UIKit

class ForgetPasswordVC: UIViewController {

    @IBOutlet weak var emailTf: ShadowTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onClickBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onClickContinue(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgetConfirmationVC") as! ForgetConfirmationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
