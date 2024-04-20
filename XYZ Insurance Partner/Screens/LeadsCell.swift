//
//  LeadsCell.swift
//  XYZ Insurance Partner
//
//  Created by Chawtech on 15/04/24.
//

import UIKit

protocol LeadsTableCellDelegate: AnyObject {
    func showActionSheet(forCell cell: LeadsCell, indexTapped: IndexPath)
}

class LeadsCell: UITableViewCell {
    
    var indexPath: IndexPath?
    weak var delegate: LeadsTableCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    
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
