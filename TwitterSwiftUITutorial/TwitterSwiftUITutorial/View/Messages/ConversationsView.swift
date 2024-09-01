//
//  ConversationsView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/01.
//

import SwiftUI

struct ConversationsView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<100) { _ in
                        ConversationCell()
                    }
                }.padding()
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundStyle(Color(.systemGroupedBackground))
            .clipShape(Circle())
            .padding()
        }
    }
}

#Preview {
    ConversationsView()
}
