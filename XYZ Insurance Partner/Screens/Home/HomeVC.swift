//
//  HomeVC.swift
//  XYZ Insurance Partner
//
//  Created by Chawtech on 03/04/24.
//

import UIKit

struct Person: Codable {
    let name: String
    let age: Int
}

class HomeVC: UIViewController {

    @IBOutlet weak var sideMenuBtn: UIBarButtonItem!
    @IBOutlet weak var customNavigationBarForDrawer: CustomNavigationBarForDrawer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenuBtn.target = revealViewController()
        sideMenuBtn.action = #selector(revealViewController()?.revealSideMenu)
        
        customNavigationBarForDrawer.leftSideMenuButtonItem.addTarget(self, action: #selector(menuTapped), for: .touchUpInside)
        
        let personViewModel = ViewModel<Person>()

        // Save data
        let person = Person(name: "Alice", age: 30)
        personViewModel.saveData(person, forKey: "personKey")

        // Load data
        personViewModel.loadData(forKey: "personKey")
        if let loadedPerson = personViewModel.loadedData {
            print("Loaded Person: \(loadedPerson)")
        }
        
    }
    
    @objc func menuTapped() {
        let mainvc = revealViewController()
        mainvc!.revealSideMenu()
    }


}
