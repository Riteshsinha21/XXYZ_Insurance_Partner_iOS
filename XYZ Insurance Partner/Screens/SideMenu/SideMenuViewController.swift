//
//  SideMenuViewController.swift
//  SideMenu-IOS-Swift
//
//  Created by apple on 12/01/22.
//

import UIKit

protocol SideMenuViewControllerDelegate {
    func selectedCell(_ row: Int)
}
class SideMenuViewController: UIViewController {
    
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var sideMenuTableView: UITableView!
    @IBOutlet var footerLabel: UILabel!
    @IBOutlet weak var financeArrowImg: UIImageView!
    @IBOutlet weak var receivablesView: UIView!
    @IBOutlet weak var payablesView: UIView!
    
    var delegate: SideMenuViewControllerDelegate?
    var defaultHighlightedCell: Int = 0
    var isFinanceCollapsed = true
    
//    var menu: [SideMenuModel] = [
//        SideMenuModel(icon: UIImage(systemName: "house.fill")!, title: "Home"),
//        SideMenuModel(icon: UIImage(systemName: "music.note")!, title: "Music"),
//        SideMenuModel(icon: UIImage(systemName: "film.fill")!, title: "Movies"),
//        SideMenuModel(icon: UIImage(systemName: "book.fill")!, title: "Books"),
//        SideMenuModel(icon: UIImage(systemName: "person.fill")!, title: "Profile"),
//        SideMenuModel(icon: UIImage(systemName: "slider.horizontal.3")!, title: "Settings"),
//        SideMenuModel(icon: UIImage(systemName: "hand.thumbsup.fill")!, title: "Like us")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView
//        self.sideMenuTableView.delegate = self
//        self.sideMenuTableView.dataSource = self
//        self.sideMenuTableView.backgroundColor = #colorLiteral(red: 0, green: 0.3827145161, blue: 1, alpha: 1)
//        self.sideMenuTableView.separatorStyle = .none
        
        // Set Highlighted Cell
//        DispatchQueue.main.async {
//            let defaultRow = IndexPath(row: self.defaultHighlightedCell, section: 0)
//            self.sideMenuTableView.selectRow(at: defaultRow, animated: false, scrollPosition: .none)
//        }
        
        // Footer
//        self.footerLabel.textColor = UIColor.white
//        self.footerLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
//        self.footerLabel.text = "Version 1.1"
        
        // Register TableView Cell
//        self.sideMenuTableView.register(SideMenuCell.nib, forCellReuseIdentifier: SideMenuCell.identifier)
        
        // Update TableView with the data
//        self.sideMenuTableView.reloadData()
    }
    
    @IBAction func onClickFinance(_ sender: Any) {
        isFinanceCollapsed = !isFinanceCollapsed
        
        UIView.animate(withDuration: 0.2) {
            self.financeArrowImg.image = UIImage.init(named: self.isFinanceCollapsed ? "down" : "up")
            self.payablesView.isHidden = self.isFinanceCollapsed
            self.receivablesView.isHidden = self.isFinanceCollapsed
            self.view.layoutIfNeeded() // Ensures any pending layout changes are applied immediately inside the animation block
        }
    }
    
    
    @IBAction func sideMenuButtonPressed(_ sender: UIButton) {
        if sender.tag != 108 {
            self.delegate?.selectedCell(sender.tag)
        }
        
    }
    
}

// MARK: - UITableViewDelegate

extension SideMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}

// MARK: - UITableViewDataSource

//extension SideMenuViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.menu.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: SideMenuCell.identifier, for: indexPath) as? SideMenuCell else { fatalError("xib doesn't exist") }
//
//        cell.iconImageView.image = self.menu[indexPath.row].icon
//        cell.titleLabel.text = self.menu[indexPath.row].title
//
//        // Highlighted color
//        let myCustomSelectionColorView = UIView()
//        myCustomSelectionColorView.backgroundColor = #colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)
//        cell.selectedBackgroundView = myCustomSelectionColorView
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.delegate?.selectedCell(indexPath.row)
//        // ...
//
//        // Remove highlighted color when you press the 'Profile' and 'Like us on facebook' cell
//        if indexPath.row == 4 || indexPath.row == 6 {
//            tableView.deselectRow(at: indexPath, animated: true)
//        }
//    }
//}
