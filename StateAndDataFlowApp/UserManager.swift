//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 22.10.2020.
//

import Combine
import Foundation

class UserManager: ObservableObject {
    
    @Published var isRegister = UserDefaults.standard.bool(forKey: "isRegister") {
        didSet {
            UserDefaults.standard.set(isRegister, forKey: "isRegister")
        }
    }
    @Published var name: String = UserDefaults.standard.string(forKey: "name") ?? "" {
        didSet {
            UserDefaults.standard.set(name, forKey: "name")
        }
    }
    
    init() {}
    
    init(name: String) {
        self.name = UserDefaults.standard.object(forKey: "name") as? String ?? ""
    }
    
    func resetUserDefaults() {
        let dictionary = UserDefaults.standard.dictionaryRepresentation()
        
        dictionary.keys.forEach { key in
            UserDefaults.standard.removeObject(forKey: key)
        }
    }
}
