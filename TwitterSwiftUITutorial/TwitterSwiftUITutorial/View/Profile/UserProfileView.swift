//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/13.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
            }
            .navigationTitle("batman")
        }
    }
}

#Preview {
    UserProfileView()
}
