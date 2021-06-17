//
//  ChatView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct ChatView: View {
  @State var messageText: String = ""
  
  var body: some View {
    VStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 12) {
          ForEach(0..<15) { _ in
            HStack {
              Spacer()
              Text("Test Mesage Text")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(ChatBubble(isFromCurrentUser: true))
                .padding(.horizontal)
            }
          }
        }
      }
      
      MessageInputView(messageText: $messageText)
        .padding()
      
    }
  }
}

struct ChatView_Previews: PreviewProvider {
  static var previews: some View {
    ChatView()
  }
}
