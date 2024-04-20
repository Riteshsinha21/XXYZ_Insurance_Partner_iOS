//
//  Protocols.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 18/04/24.
//

import Foundation
import UIKit


protocol DatePickerPresentable {
    func openDatePicker(completion: @escaping (Date) -> Void)
}

protocol ActionSheetPresentable {
    func showActionSheet(title: String?, message: String?, actions: [UIAlertAction], sourceView: UIView)
}

