//
//  ProfileHeaderView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/13.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120 / 2)
                .shadow(color: .black, radius: 6)
            
            Text("i-Qbu")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@iQbu")
                .font(.subheadline)
                .foregroundStyle(.gray)
            
            Text("Billionare by day")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack(spacing: 40) {
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                }
                
                VStack {
                    Text("12")
                        .font(.system(size: 16))
                        .bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                }
            }
            .padding()
        }
        .padding()
        
        ProfileActionButtonView(isCurrentUser: false)
        
        Spacer()
    }
}

#Preview {
    ProfileHeaderView()
}
