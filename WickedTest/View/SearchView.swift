//
//  SearchView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct SearchView: View {
  @State var searchText: String = ""
  @ObservedObject var searchVM = SearchViewModel()
  
  var body: some View {
    ScrollView {
      SearchBar(text: $searchText)
        .padding()
      
      VStack(alignment: .leading) {
        ForEach(searchVM.users) { user in
          HStack { Spacer() }
          NavigationLink(destination: UserProfileView(user: user)) {
            UserCell(user: user)
          }
        }
      }
      .padding(.leading)
    }
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
