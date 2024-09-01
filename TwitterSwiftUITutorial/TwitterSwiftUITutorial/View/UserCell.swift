//
//  UserCell.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/01.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("iQbu")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("daichi watanabe")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
