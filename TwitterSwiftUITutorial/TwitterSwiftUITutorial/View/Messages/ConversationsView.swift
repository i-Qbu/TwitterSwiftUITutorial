//
//  ConversationsView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/01.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    VStack {
                        ForEach(0..<100) { _ in
                            NavigationLink(
                                destination: ChatView(),
                                label: {
                                    ConversationCell()
                                })
                        }
                    }.padding()
                }
                
                Button(action: { self.isShowingNewMessageView.toggle() }, label: {
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
                .sheet(
                    isPresented: $isShowingNewMessageView,
                    content: {
                        NewMessageView(
                            show: $isShowingNewMessageView,
                            startChat: $showChat
                        )
                    }
                )
            }
            .navigationDestination(
                isPresented: $showChat,
                destination: { ChatView() })
        }
    }
}


#Preview {
    ConversationsView()
}
