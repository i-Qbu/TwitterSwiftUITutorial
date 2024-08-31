//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/08/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            //             Text("This is inside a nav view")
            //                .navigationTitle("Home")
            //                .navigationBarTitleDisplayMode(.inline)
            TabView {
                Text("Feed")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                Text("Message")
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Message")
                    }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
