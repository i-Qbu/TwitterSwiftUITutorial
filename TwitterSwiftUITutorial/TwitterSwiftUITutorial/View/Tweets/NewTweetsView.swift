//
//  NewTweetsView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/16.
//

import SwiftUI

struct NewTweetsView: View {
    @State private var tweetText: String = ""
    
    @Binding var isPresented: Bool
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    
                    TextEditor(text: $tweetText)
                        .overlay(alignment: .topLeading) {
                            Text(tweetText.isEmpty ? "What's happen?" : "")
                                .foregroundStyle(.gray)
                                .padding(.horizontal, 4)
                                .padding(.vertical, 8)
                        }
                    
                    Spacer()
                }
                .padding()
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            isPresented.toggle()
                        } label: {
                            Text("Cancel")
                                .padding()
                        }
                    }
                }
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            isPresented.toggle()
                        } label: {
                            Text("Tweet")
                                .bold()
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(.blue)
                                .foregroundStyle(.white)
                                .clipShape(.capsule)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    NewTweetsView(isPresented: .constant(true))}
