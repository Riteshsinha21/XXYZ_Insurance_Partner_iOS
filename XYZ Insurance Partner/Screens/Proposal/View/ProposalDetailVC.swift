//
//  ProposalDetailVC.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 16/04/24.
//

import UIKit

class ProposalDetailVC: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        configuration()
    }
    
    @IBAction func onClickBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}

extension ProposalDetailVC {
    func configuration() {
        startAnimation()
    }
    
    func startAnimation() {
        stackView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        // Animate to final state with a bounce effect
        UIView.animate(withDuration: 0.7, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.stackView.transform = .identity
        }, completion: nil)
    }
}
