//
//  SignupViewModel.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 02/04/24.
//

import Foundation

class SignupViewModel {
    
    static let shared = SignupViewModel()
    
    func textHandler(model: signupValidation) -> (Bool, String) {
        
        var status = true
        var error = ""
        
        if model.name?.isEmpty ?? false {
            status = false
            error = "Please enter Name."
        } else if model.email?.isEmpty ?? false {
            status = false
            error = "Please enter Email."
        } else if model.password?.isEmpty ?? false {
            status = false
            error = "Please enter Password."
        } else if model.confirmPassword?.isEmpty ?? false {
            status = false
            error = "Please confirm your Password."
        }
        
        return (status, error)
    }
    
    
}
