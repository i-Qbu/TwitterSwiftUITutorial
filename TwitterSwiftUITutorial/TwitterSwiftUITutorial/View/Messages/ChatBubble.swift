//
//  ChatBubble.swift
//  TwitterSwiftUITutorial
//
//  Created by 渡辺大智 on 2024/09/09.
//

import SwiftUI

struct ChatBubble: Shape {
    var isMine: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isMine ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

#Preview {
    ChatBubble(isMine: false)
}
