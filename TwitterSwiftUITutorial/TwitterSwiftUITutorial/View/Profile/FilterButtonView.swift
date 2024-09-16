//
//  FilterButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/13.
//

import SwiftUI

enum TweetFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}

struct FilterButtonView: View {
    @Binding var selectedfilter: TweetFilterOptions
    @Namespace private var animation
    
    var body: some View {
        VStack {
            HStack {
                ForEach(TweetFilterOptions.allCases, id: \.self) { option in
                    Button(action: {
                            withAnimation {
                                selectedfilter = option
                            }
                    }, label: {
                        VStack {
                            Text(option.title)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .fixedSize(horizontal: true, vertical: false)
                            
                            if selectedfilter == option {
                                Rectangle()
                                    .fill(.blue)
                                    .frame(height: 3)
                                    .matchedGeometryEffect(id: "underline", in: animation)
                            } else {
                                Rectangle()
                                    .fill(.clear)
                                    .frame(height: 3)
                            }
                        }
                    })
                }
            }
            .padding(.top)
            
            Spacer()
        }
    }
}

#Preview {
    FilterButtonView(selectedfilter: .constant(.tweets))
}
