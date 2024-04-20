//
//  UnassignedLeadsCell.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 12/04/24.
//

import UIKit

protocol TableCellDelegate: AnyObject {
    func showActionSheet(forCell cell: UnassignedLeadsCell, indexTapped: IndexPath)
}

class UnassignedLeadsCell: UITableViewCell {
    
    @IBOutlet weak var requestIdLbl: MyLabelMedium16Black!
    @IBOutlet weak var MenuBtn: UIButton!
    @IBOutlet weak var categoryLbl: MyLabelReg14Black!
    @IBOutlet weak var timeLbl: MyLabelReg14Black!
    
    //    var productList: ProductList? {
    //        didSet { // Property Observer
    //            setProductList()
    //        }
    //    }
    
    var productList: String? {
        didSet { // Property Observer
            setProductList()
        }
    }
    
    var indexPath: IndexPath?
    weak var delegate: TableCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setProductList() {
        //        guard let productList else { return }
        requestIdLbl.text = "Request Id:\(001)"
        categoryLbl.text = "Health1"
        timeLbl.text = "8:30"
    }
    
    func setIndexPath(_ indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    @IBAction func onClickMenu(_ sender: Any) {
        if let indexPath = indexPath {
            delegate?.showActionSheet(forCell: self, indexTapped: indexPath)
        }
    }
    
    
}
