//
//  AssignLeadVC.swift
//  XYZ Insurance Partner
//
//  Created by Chawtech on 12/04/24.
//

import UIKit

class AssignLeadVC: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configuration()
    }
    
    @IBAction func onClickBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension AssignLeadVC {
    func configuration() {
        tblView.register(UINib(nibName: "AssignCell", bundle: nil), forCellReuseIdentifier: "AssignCell")
        
        initViewModel()
    }
    
    func initViewModel() {
        
    }
}

extension AssignLeadVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 215
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AssignCell", for: indexPath) as? AssignCell else {
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
