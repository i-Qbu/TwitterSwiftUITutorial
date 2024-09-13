//
//  MessageView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/11.
//

import SwiftUI

struct MessageView: View {
    let message: MockMessage
    
    var body: some View {
        HStack {
            if message.isMine {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isMine: message.isMine))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    // message.imageName
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(ChatBubble(isMine: message.isMine))
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}

#Preview {
    MessageView(message: MOCK_MESSAGES[0])
}
