//
//  ProposalVC.swift
//  XYZ Insurance Partner
//
//  Created by Chawtech on 15/04/24.
//

import UIKit

class ProposalVC: UIViewController {

    @IBOutlet weak var jobPolicyTf: UITextField!
    
    var proposalVM = ProposalViewModel()
    var currentSender: UIButton? // Store the sender for later use
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        proposalVM.delegate = self

    }
   
    @IBAction func onClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onClickReview(_ sender: MyFilledButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProposalDetailVC") as! ProposalDetailVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickJobPolicyType(_ sender: UIButton) {
//        openDatePicker { [weak self] selectedDate in
//            let formatter = DateFormatter()
//            formatter.dateFormat = "dd/MM/yyyy"
//            self?.jobPolicyTf.text = formatter.string(from: selectedDate)
//        }
        currentSender = sender // Capture the sender
        proposalVM.fetchArray()
    }
}

extension ProposalVC: ProposalViewModelDelegate {
    
    func didFetchArray(_ array: [String]) {
        var actions: [UIAlertAction] = []
        for option in array {
            let action = UIAlertAction(title: option, style: .default) { _ in
                // Handle option selection
            }
            actions.append(action)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        actions.append(cancelAction)
        
        if let sender = currentSender { // Use the captured sender
            showActionSheet(title: "Select Option", message: nil, actions: actions, sourceView: sender)
        }
    }
    
    
}
