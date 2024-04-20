//
//  LeadsVC.swift
//  XYZ Insurance Partner
//
//  Created by Chawtech on 15/04/24.
//

import UIKit

class LeadsVC: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configuration()
    }
    @IBAction func onClickSideMenu(_ sender: Any) {
        let mainvc = revealViewController()
        mainvc!.revealSideMenu()
    }    

}
extension LeadsVC {
    func configuration() {
        tableView.register(UINib(nibName: "LeadsCell", bundle: nil), forCellReuseIdentifier: "LeadsCell")
        initViewModel()
    }
    
    func initViewModel() {
        
    }
}
extension LeadsVC: UITableViewDelegate, UITableViewDataSource, LeadsTableCellDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LeadsCell", for: indexPath) as? LeadsCell else {
            return UITableViewCell()
        }
        cell.delegate = self
        cell.setIndexPath(indexPath)
//        cell.productList = "yes"
        //        let info = homeVM.youMaylikeCatArr[indexPath.row]
        //        cell.productList = info
        return cell
    }
    
    func showActionSheet(forCell cell: LeadsCell, indexTapped: IndexPath)  {
        let actionSheet = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "View Details", style: .default, handler: { _ in
            // Handle action 1
        }))
        actionSheet.addAction(UIAlertAction(title: "Create Proposal", style: .default, handler: { _ in
            // Handle action 2
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProposalVC") as! ProposalVC
            self.navigationController?.pushViewController(vc, animated: true)
        }))
        actionSheet.addAction(UIAlertAction(title: "Reassign Lead", style: .default, handler: { _ in
            // Handle action 2
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(actionSheet, animated: true, completion: nil)
    }
    
}
