//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/13.
//

import SwiftUI

struct UserProfileView: View {
    @State private var selectedOption: TweetFilterOptions = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
            }
            .navigationTitle("batman")
            
            FilterButtonView(selectedfilter: $selectedOption)
            
            ForEach(0 ..< 9) {tweet in
                TweetCell()
            }
            .padding()
        }
    }
}

#Preview {
    UserProfileView()
}
