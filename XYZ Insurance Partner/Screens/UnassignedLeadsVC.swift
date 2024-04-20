//
//  UnassignedLeadsVC.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 12/04/24.
//

import UIKit

class UnassignedLeadsVC: UIViewController {
    
    @IBOutlet weak var leadsTableView: UITableView!
    
    
    typealias CellType = UnassignedLeadsCell
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configuration()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSideMenu(_ sender: Any) {
        let mainvc = revealViewController()
        mainvc!.revealSideMenu()
    }    
}

extension UnassignedLeadsVC {
    func configuration() {
        
        leadsTableView.register(UINib(nibName: "UnassignedLeadsCell", bundle: nil), forCellReuseIdentifier: "UnassignedLeadsCell")

        initViewModel()
    }
    
    func initViewModel() {
        
    }
}

extension UnassignedLeadsVC: UITableViewDelegate, UITableViewDataSource, TableCellDelegate{

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UnassignedLeadsCell", for: indexPath) as? UnassignedLeadsCell else {
            return UITableViewCell()
        }
        
        cell.delegate = self
        cell.setIndexPath(indexPath)
        cell.productList = "yes"
//        let info = homeVM.youMaylikeCatArr[indexPath.row]
//        cell.productList = info
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "AssignLeadVC") as! AssignLeadVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showActionSheet(forCell cell: UnassignedLeadsCell, indexTapped: IndexPath)  {
        let actionSheet = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "View Details", style: .default, handler: { _ in
            // Handle action 1
           
        }))
        actionSheet.addAction(UIAlertAction(title: "Assigned to Self", style: .default, handler: { _ in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "IssuedPoliciesVC") as! IssuedPoliciesVC
            self.navigationController?.pushViewController(vc, animated: true)
        }))
        actionSheet.addAction(UIAlertAction(title: "Assign Lead", style: .default, handler: { _ in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "AssignLeadVC") as! AssignLeadVC
            self.navigationController?.pushViewController(vc, animated: true)
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(actionSheet, animated: true, completion: nil)
    }
    
}
