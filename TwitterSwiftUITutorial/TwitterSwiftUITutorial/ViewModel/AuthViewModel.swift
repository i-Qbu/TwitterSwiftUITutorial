//
//  AuthViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/10/15.
//

import SwiftUI
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject {
    func login() {
        
    }
    
    func registerUser(
        email: String,
        password: String,
        username: String,
        fullName: String,
        profileImage: UIImage
    ) {
        print("DEBUG: Email is \(email)")
        print("DEBUG: Password is \(password)")
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Successfully signed up user...")
        }
    }
}
