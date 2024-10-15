//
//  TwitterSwiftUITutorialApp.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/08/31.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUITutorialApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            LoginView()
        }
    }
}
