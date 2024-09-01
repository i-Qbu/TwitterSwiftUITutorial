//
//  TweetCell.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/08/31.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 04) {
                    HStack {
                        Text("i-qbu")
                            .font(.system(size: 14, weight: .semibold))
                        
                        Text("@iQbu •")
                            .foregroundStyle(.gray)
                        
                        Text("2w")
                            .foregroundStyle(.gray)
                    }
                    
                    Text("Tweet example sentence.Hoge hoge hoge hoge hoge hoge.")
                }
            }
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
            }
            .foregroundStyle(.gray)
            
            Divider()
        }
    }
}

#Preview {
    TweetCell()
}
