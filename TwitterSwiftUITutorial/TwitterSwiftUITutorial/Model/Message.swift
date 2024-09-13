//
//  Message.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/10.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isMine: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(id: 0, imageName: "Mr.square", messageText: "Hey", isMine: false),
    .init(id: 1, imageName: "iQbu", messageText: "Hey", isMine: true),
    .init(id: 2, imageName: "iQbu", messageText: "Hey what's up?", isMine: true),
    .init(id: 3, imageName: "Mr.square", messageText: "Not much, you?", isMine: false),
    .init(id: 4, imageName: "iQbu", messageText: "Hey what", isMine: true),
    .init(id: 5, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 6, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 7, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 8, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 9, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 10, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 11, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 12, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 13, imageName: "Mr.square", messageText: "Hey what", isMine: false),
    .init(id: 14, imageName: "Mr.square", messageText: "Hey what", isMine: false),
]
