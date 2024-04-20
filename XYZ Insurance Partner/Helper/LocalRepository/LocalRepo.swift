//
//  LocalRepo.swift
//  XYZ Insurance Partner
//
//  Created by CTS on 15/04/24.
//

import Foundation

class ViewModel<T: Codable> {
    var loadedData: T?
    
    func saveData(_ data: T, forKey key: String) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(data) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }
    
    func loadData(forKey key: String) {
        if let savedData = UserDefaults.standard.data(forKey: key),
           let loadedData = try? JSONDecoder().decode(T.self, from: savedData) {
            self.loadedData = loadedData
        }
    }
}

