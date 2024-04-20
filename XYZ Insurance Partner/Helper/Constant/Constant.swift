//
//  Constant.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 02/04/24.
//

import Foundation
import UIKit

var deviceId = UIDevice.current.identifierForVendor!.uuidString
let kUserDefaults = UserDefaults.standard

struct AppKeys {
    static let token = "token"
    static let fcmKey = "fcmKey"
}

struct APIConstants {
    static let baseURL = "https://api.example.com/"
    static let getUsers = "users"
    static let getUserDetails = "users/{userId}"
    // Add other endpoints as needed
}

func showToast (controller: UIViewController, message : String, seconds: Double) {
    let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
    alert.view.backgroundColor = UIColor.black
    alert.view.alpha = 0.6
    alert.view.layer.cornerRadius = 15
    controller.present (alert, animated: true)
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
        alert.dismiss(animated: true)
    }
    
}
