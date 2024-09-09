//
//  ConversationsView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/01.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    @State var searchText = ""
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<100) { _ in
                        NavigationLink(
                            destination: Text("Chat View"), label: { ConversationCell()
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
            .sheet(isPresented: $isShowingNewMessageView, content: {
                NavigationStack {
                    SearchView()
                        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
                }
            })
        }
    }
}

#Preview {
    ConversationsView()
}
