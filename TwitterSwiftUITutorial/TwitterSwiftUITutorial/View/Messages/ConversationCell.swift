//
//  ConversationCell.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/01.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("iQbu")
                        .font(.system(size: 15, weight: .semibold))
                    
                    Text("Longer messages texxt to see what happens when i do this")
                        .font(.system(size: 15))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                .padding(.trailing)
            }
            
            Divider()
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ConversationCell()
}
