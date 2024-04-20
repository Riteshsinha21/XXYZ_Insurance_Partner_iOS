//
//  LoginModel.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 02/04/24.
//

import Foundation

class LoginValidationModel {
    var email: String?
    var password: String?
    
    init(email: String? = nil, password: String? = nil) {
        self.email = email
        self.password = password
    }
}
