//
//  LoginView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/19.
//

import SwiftUI

struct LoginView: View {
    @State var tweetText: String = ""
    @State var passwardText: String = ""
    
    let textFieldColor = Color(.init(white: 1, alpha: 0.15))
    
    var body: some View {
        VStack {
            Spacer(minLength: 80)
            
            Image(systemName: "x.squareroot")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .scaledToFill()
                .foregroundStyle(.white)
            
            
            Form {
                Section {
                    HStack {
                        Image(systemName: "envelope")
                        TextField(text: $tweetText, prompt: Text("Email").foregroundStyle(.white)) {
                            Text("Email")
                        }
                    }.foregroundStyle(.white)
                        .listRowBackground(textFieldColor)
                }
                
                Section {
                    HStack {
                        Image(systemName: "lock.fill")
                        SecureField(text: $passwardText, prompt: Text("Password").foregroundStyle(.white)) {
                            Text("Password")
                        }
                    }
                    .foregroundStyle(.white)
                    .listRowBackground(textFieldColor)
                }
                
                Button(action: {}, label: {
                    HStack {
                        Spacer()
                        Text("Forgot Password?")
                    }
                    .foregroundStyle(.white)
                })
                .listRowBackground(Color.blue)
                .listRowInsets(EdgeInsets())
                .frame(maxWidth: .infinity)
                .buttonStyle(BorderlessButtonStyle())
                
                Button(action: {}, label: {
                    HStack {
                        Spacer()
                        Text("Sign in").fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.vertical, 12)
                    .foregroundStyle(Color.blue)
                    .background(.white)
                    .clipShape(.capsule)
                })
                .listRowInsets(EdgeInsets())
                .frame(maxWidth: .infinity)
                .buttonStyle(BorderlessButtonStyle())

                .listRowBackground(Color.blue)
            }.scrollContentBackground(.hidden)
                .padding(.top)
            
            HStack {
                Button(action: {}, label: {
                    Text("Don't have an account?")
                    Text("Sign Up").fontWeight(.semibold)
                })
            }.foregroundStyle(.white)
            
        }.background(Color.blue)
    }
}

#Preview {
    LoginView()
}
