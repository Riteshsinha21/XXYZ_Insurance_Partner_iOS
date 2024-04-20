//
//  LoginViewModel.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 02/04/24.
//

import Foundation

class LoginViewModel {
    
    static let shared = LoginViewModel()
    
    func textfieldHandler(model: LoginValidationModel) -> (Bool, String) {
        
        var status = true
        var error = ""
        
        if model.email?.isEmpty ?? false {
            status = false
            error = "Please enter email."
        } else if model.password?.isEmpty ?? false {
            status = false
            error = "Please enter Password."
        }
        
        return (status, error)
        
    }
}
