//
//  NewMessageView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/11.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(0..<10) { _ in
                        Button(action: {
                            self.show.toggle()
                            self.startChat.toggle()
                        }, label: {
                            UserCell().foregroundStyle(Color.black)
                        })
                    }
                }
            }
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always))
            .padding(.horizontal)
        }
    }
}

#Preview {
    NewMessageView(show: .constant(true), startChat: .constant(true))
}
