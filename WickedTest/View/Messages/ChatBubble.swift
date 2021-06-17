//
//  ChatBubble.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct ChatBubble: Shape {
  var isFromCurrentUser: Bool = false
  
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
    return Path(path.cgPath)
  }
  
}

struct ChatBubble_Previews: PreviewProvider {
  static var previews: some View {
    ChatBubble()
  }
}
