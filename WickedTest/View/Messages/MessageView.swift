//
//  MessageView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct MessageView: View {
  let message: MockMessage
  
  var body: some View {
    HStack {
      if message.isCurrentUser {
        Spacer()
        Text(message.messageText)
          .padding()
          .foregroundColor(.white)
          .background(Color.blue)
          .clipShape(ChatBubble(isFromCurrentUser: true))
          .padding(.horizontal)
      } else {
        HStack(alignment: .bottom) {
          Image(message.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
          Text(message.messageText)
            .padding()
            .foregroundColor(.black)
            .background(Color(.systemGray5))
            .clipShape(ChatBubble(isFromCurrentUser: false))
        }
        .padding(.horizontal)
        Spacer()
      }
    }
  }
}

struct MessageView_Previews: PreviewProvider {
  static var previews: some View {
    MessageView(message: MOCK_MESSAGES[0])
  }
}
