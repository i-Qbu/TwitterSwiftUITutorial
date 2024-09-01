//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/01.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { _ in
                    UserCell()
                }
            }
        }.padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
