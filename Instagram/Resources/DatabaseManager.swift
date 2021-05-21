//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Nadia Vedeneyeva on 5/19/21.
//

import FirebaseDatabase

public class DatabaseManager {
    static let shared = DatabaseManager()
    private let database = Database.database().reference()
    
    //MARK: - Public
    
    /// check if username and email is available
    /// - parameters
    ///     - email: String representing email
    ///     - username: String representing username
    
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    /// insert new user to database
    /// - parameters
    ///     - email: String representing email
    ///     - username: String representing username
    ///     - completion: Async callback for resultif database entry succeeded
    public func insertNewUser(with email: String, username: String, completion: @escaping(Bool) -> Void) {
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                // succeeded
                completion(true)
                return
            }
            else {
                // failed
                completion(false)
            }
        }
    }

    
}
