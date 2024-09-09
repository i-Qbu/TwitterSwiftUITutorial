//
//  MessageInputView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/09.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var body: some View {
        HStack {
            TextField("Message...", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: {}) {
                Text("Send")
            }
        }
    }
}

#Preview {
    MessageInputView(messageText: .constant("Message..."))
}
