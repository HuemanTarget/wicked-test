//
//  ConversationsView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct ConversationsView: View {
  @State var isShowingNewMessageView: Bool = false
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      ScrollView {
        VStack {
          ForEach(0..<20) { _ in
            NavigationLink(destination: Text("Destination")) {
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
        SearchView()
      })
    }
  }
}

struct ConversationsView_Previews: PreviewProvider {
  static var previews: some View {
    ConversationsView()
  }
}
