//
//  Extensions.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 18/04/24.
//

import Foundation
import UIKit

extension UIViewController: DatePickerPresentable {
    func openDatePicker(completion: @escaping (Date) -> Void) {
        let alertController = UIAlertController(title: "\n\n\n\n\n\n\n\n\n", message: nil, preferredStyle: .actionSheet)
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } else {
            // Fallback on earlier versions
        } // Use wheels style for iOS 14 and later
        
        alertController.view.addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: alertController.view.topAnchor, constant: 8),
            datePicker.leadingAnchor.constraint(equalTo: alertController.view.leadingAnchor),
            datePicker.trailingAnchor.constraint(equalTo: alertController.view.trailingAnchor),
            datePicker.heightAnchor.constraint(equalToConstant: 200) // Set the height of the date picker
        ])
        
        let doneAction = UIAlertAction(title: "Done", style: .default) { _ in
            let selectedDate = datePicker.date
            completion(selectedDate)
        }
        alertController.addAction(doneAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func showActionSheet(title: String?, message: String?, actions: [UIAlertAction], sourceView: UIView) {
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        for action in actions {
            actionSheet.addAction(action)
        }
        if let popoverController = actionSheet.popoverPresentationController {
            popoverController.sourceView = sourceView
            popoverController.sourceRect = sourceView.bounds
            popoverController.permittedArrowDirections = [.down, .up]
        }
        present(actionSheet, animated: true, completion: nil)
    }
    
}

//extension ActionSheetPresentable where Self: UIViewController {
//    func showActionSheet(title: String?, message: String?, actions: [UIAlertAction], sourceView: UIView) {
//        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
//        for action in actions {
//            actionSheet.addAction(action)
//        }
//        if let popoverController = actionSheet.popoverPresentationController {
//            popoverController.sourceView = sourceView
//            popoverController.sourceRect = sourceView.bounds
//            popoverController.permittedArrowDirections = [.down, .up]
//        }
//        present(actionSheet, animated: true, completion: nil)
//    }
//}
