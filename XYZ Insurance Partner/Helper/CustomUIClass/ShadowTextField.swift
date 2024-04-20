//
//  ShadowTextField.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 01/04/24.
//

import Foundation
import UIKit

class ShadowTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        // Apply shadow properties
        layer.shadowColor = UIColor(red: 8/255, green: 106/255, blue: 161/255, alpha: 1.0).cgColor
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 4
        layer.masksToBounds = false

    }
}

