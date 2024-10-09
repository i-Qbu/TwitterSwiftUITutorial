//
//  RegistrationView.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/19.
//

import SwiftUI

struct RegistrationView: View {
    @State var fullNameText: String = ""
    @State var emailText: String = ""
    @State var userNameText: String = ""
    @State var passwardText: String = ""
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    @Environment(\.dismiss) private var dismiss
    
    let textFieldColor = Color(.init(white: 1, alpha: 0.15))
    
    var body: some View {
            VStack {
                Spacer(minLength: 80)
                Button(action: { showImagePicker = true }, label: {
                    ZStack {
                        if let image = image {
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                                .scaledToFill()
                        } else {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                                .scaledToFill()
                            .foregroundStyle(.white)
                        }
                    }
                }).sheet(isPresented: $showImagePicker, onDismiss: {
                    guard let selectedImage = selectedUIImage else { return }
                    image = Image(uiImage: selectedImage)
                }, content: {
                    ImagePicker(image: $selectedUIImage)
                })
                
                
                Form {
                    Section {
                        HStack {
                            Image(systemName: "person")
                            TextField(text: $fullNameText, prompt: Text("Full Name").foregroundStyle(.white)) {
                                Text("")
                            }
                        }.foregroundStyle(.white)
                            .listRowBackground(textFieldColor)
                    }
                    
                    Section {
                        HStack {
                            Image(systemName: "envelope")
                            TextField(text: $emailText, prompt: Text("Email").foregroundStyle(.white)) {
                                Text("")
                            }
                        }.foregroundStyle(.white)
                            .listRowBackground(textFieldColor)
                    }
                    
                    Section {
                        HStack {
                            Image(systemName: "person")
                            TextField(text: $userNameText, prompt: Text("Username").foregroundStyle(.white)) {
                                Text("")
                            }
                        }.foregroundStyle(.white)
                            .listRowBackground(textFieldColor)
                    }
                    
                    Section {
                        HStack {
                            Image(systemName: "lock.fill")
                            SecureField(text: $passwardText, prompt: Text("Password").foregroundStyle(.white)) {
                                Text("")
                            }
                        }
                        .foregroundStyle(.white)
                        .listRowBackground(textFieldColor)
                    }
                    
                    Button(action: {}, label: {
                        HStack {
                            Spacer()
                            Text("Sign Up").fontWeight(.bold)
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
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Already have an account?")
                        Text("Sign In").fontWeight(.semibold)
                    })
                }.foregroundStyle(.white)
            }.background(Color.blue)
    }
}

#Preview {
    RegistrationView()
}
