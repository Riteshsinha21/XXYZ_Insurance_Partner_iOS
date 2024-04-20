//
//  IssuedPoliciesVC.swift
//  XYZ Insurance Partner
//
//  Created by Chawtech on 12/04/24.
//

import UIKit

class IssuedPoliciesVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuration()
    }
    
    @IBAction func onClickSideMenu(_ sender: UIButton) {
        let mainvc = revealViewController()
        mainvc!.revealSideMenu()
    }

}

extension IssuedPoliciesVC {
    func configuration() {
        tableView.register(UINib(nibName: "IssuedPoliciesCell", bundle: nil), forCellReuseIdentifier: "IssuedPoliciesCell")
        initViewModel()
    }
    
    func initViewModel() {
        
    }
}

extension IssuedPoliciesVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IssuedPoliciesCell", for: indexPath) as? IssuedPoliciesCell else {
            return UITableViewCell()
        }
//        cell.delegate = self
//        cell.setIndexPath(indexPath)
//        cell.productList = "yes"
        //        let info = homeVM.youMaylikeCatArr[indexPath.row]
        //        cell.productList = info
        return cell
    }
    
//    func showActionSheet(forCell cell: UnassignedLeadsCell, indexTapped: IndexPath)  {
//        let actionSheet = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
//        actionSheet.addAction(UIAlertAction(title: "View Details", style: .default, handler: { _ in
//            // Handle action 1
//        }))
//        actionSheet.addAction(UIAlertAction(title: "Assigned to Self", style: .default, handler: { _ in
//            // Handle action 2
//        }))
//        actionSheet.addAction(UIAlertAction(title: "Assign Lead", style: .default, handler: { _ in
//            // Handle action 2
//        }))
//        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//        present(actionSheet, animated: true, completion: nil)
//    }
    
}
