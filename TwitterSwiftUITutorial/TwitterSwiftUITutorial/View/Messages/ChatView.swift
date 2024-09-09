//
//  ChatView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/09.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(0..<15) { _ in
                        Text("Chat bubble")
                    }
                }
            }
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

#Preview {
    ChatView()
}
