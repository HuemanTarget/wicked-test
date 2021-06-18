//
//  ConversationsView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct ConversationsView: View {
  @State var isShowingNewMessageView: Bool = false
  @State var showChat: Bool = false
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      NavigationLink(
        destination: ChatView(),
        isActive: $showChat,
        label: {})
      
      ScrollView {
        VStack {
          ForEach(0..<20) { _ in
            NavigationLink(destination: ChatView()) {
              ConversationCell()
            }
          }
        }
        .padding()
      }
      
      Button(action: {
        self.isShowingNewMessageView.toggle()
      }) {
        Image(systemName: "envelope")
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32)
          .padding()
      }
      .background(Color.blue)
      .foregroundColor(.white)
      .clipShape(Circle())
      .padding()
      .sheet(isPresented: $isShowingNewMessageView, content: {
        NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
      })
    }
  }
}

struct ConversationsView_Previews: PreviewProvider {
  static var previews: some View {
    ConversationsView()
  }
}
