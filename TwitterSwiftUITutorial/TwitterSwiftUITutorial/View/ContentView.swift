//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/08/31.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    
    var body: some View {
        TabView {
            NavigationStack {
                FeedView()
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            SearchView(searchText: $searchText)
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            
            NavigationStack {
                ConversationsView()
                    .navigationTitle("Message")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Message")
            }
        }
    }
}

#Preview {
    ContentView()
}
