//
//  ProfileActionButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/13.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(
                action: {},
                label: { Text("Edit profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                })
            .clipShape(.capsule)
            .shadow(color: .black, radius: 6)
        } else {
            HStack {
                Button(
                    action: {},
                    label: { Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundStyle(.white)
                    })
                .clipShape(.capsule)
                .shadow(color: .black, radius: 6)
                
                Button(
                    action: {},
                    label: { Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundStyle(.white)
                    })
                .clipShape(.capsule)
                .shadow(color: .black, radius: 6)
            }
        }
    }
}

#Preview {
    ProfileActionButtonView(isCurrentUser: false)
}
