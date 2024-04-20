//
//  ProposalViewModel.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 18/04/24.
//

import Foundation

protocol ProposalViewModelDelegate: AnyObject {
    func didFetchArray(_ array: [String])
}

class ProposalViewModel {
    weak var delegate: ProposalViewModelDelegate?

    func fetchArray() {
        // Simulate API call to fetch array
        DispatchQueue.global().async {
            // Assume array is fetched from API
            let array = ["Option 1", "Option 2", "Option 3"]
            DispatchQueue.main.async {
                self.delegate?.didFetchArray(array)
            }
        }
    }
}
