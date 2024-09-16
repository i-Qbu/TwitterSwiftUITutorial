//
//  NewTweetsView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/16.
//

import SwiftUI

struct NewTweetsView: View {
    @Binding var isPresented: Bool
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    Text("What's happening?")
                        .foregroundStyle(.gray)
                    
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
