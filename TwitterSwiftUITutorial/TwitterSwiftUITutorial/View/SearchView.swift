//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/01.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchText: String
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(0..<10) { _ in
                        NavigationLink(
                            destination: UserProfileView(),
                            label:  { UserCell() }
                        )
                    }
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always))
            .padding(.horizontal)
            .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    SearchView(searchText: .constant("who?"))
}
