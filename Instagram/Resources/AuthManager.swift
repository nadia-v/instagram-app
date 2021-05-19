//
//  AuthManager.swift
//  Instagram
//
//  Created by Nadia Vedeneyeva on 5/19/21.
//

import FirebaseAuth


public class AuthManager {
    static let shared = AuthManager()
    
    //MARK: - Public
    
    public func registerNewUser(username: String, email: String, password: String) {
        
    }
    
    //username and email are optional, because the user might provide either one
    public func loginUser(username: String?, email: String?, password: String) {
        
    }
}
