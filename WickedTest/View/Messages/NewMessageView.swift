//
//  NewMessageView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct NewMessageView: View {
  @State var searchText: String = ""
  @ObservedObject var searchVM = SearchViewModel()
  @Binding var show: Bool
  @Binding var startChat: Bool
  
  var body: some View {
    ScrollView {
      SearchBar(text: $searchText)
        .padding()
      
      VStack(alignment: .leading) {
        ForEach(searchVM.users) { user in
          HStack { Spacer() }
          Button(action: {
            self.show.toggle()
            self.startChat.toggle()
          }) {
            UserCell(user: user)
          }
        }
      }
      .padding(.leading)
    }
  }
  
}

struct NewMessageView_Previews: PreviewProvider {
  static var previews: some View {
    NewMessageView(show: .constant(true), startChat: .constant(true))
  }
}
