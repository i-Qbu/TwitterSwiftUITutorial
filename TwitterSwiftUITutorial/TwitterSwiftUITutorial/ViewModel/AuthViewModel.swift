//
//  AuthViewModel.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/10/15.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore

// TODO: エラー時のダイアログと処理の切り分け
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
        
        guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else { return }
        let filename = NSUUID().uuidString
        let storageRef = Storage.storage().reference().child(filename)
        
        // 画像を保存
        storageRef.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("DEBUG: Failed to upload image \(error.localizedDescription)")
                return
            }
            
            // 画像の保存先取得
            storageRef.downloadURL { url, _ in
                guard let profileImageUrl = url?.absoluteString else { return }
                
                // emailとpasswordでUser作成
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    if let error = error {
                        print("DEBUG: Error \(error.localizedDescription)")
                        return
                    }
                    
                    print("DEBUG: Successfully uploaded user photo..")
                    
                    // 作成したUser情報
                    guard let user = result?.user else { return }
                    let data = [
                        "email": email,
                        "username": username,
                        "fullname": fullName,
                        "profileImageUrl": profileImageUrl,
                        "uid": user.uid
                    ]
                    
                    Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                        print("DEBUG: Successfully uploaded user data..")
                    }
                }
            }
        }
    }
}
