//
//  SignupModel.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 02/04/24.
//

import Foundation

class signupValidation {
    var name: String?
    var email: String?
    var password: String?
    var confirmPassword: String?
    
    init(name: String? = nil, email: String? = nil, password: String? = nil, confirmPassword: String? = nil) {
        self.name = name
        self.email = email
        self.password = password
        self.confirmPassword = confirmPassword
    }
}
