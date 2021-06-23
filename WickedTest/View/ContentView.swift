//
//  ContentView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
  @EnvironmentObject var authVM: AuthViewModel
  
  var body: some View {
    Group {
      if authVM.userSession != nil {
        NavigationView {
          TabView {
            FeedView()
              .tabItem {
                Image(systemName: "homekit")
                Text("Home")
              }
            
            SearchView()
              .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
              }
            
            ConversationsView()
              .tabItem {
                Image(systemName: "envelope")
                Text("Messages")
              }
          }
          .navigationBarItems(leading: Button(action: {
            authVM.signOut()
          }) {
            if let user = authVM.user {
              KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 32, height: 32)
                .cornerRadius(16)
            }
          })
          .navigationBarTitle("Home", displayMode: .inline)
        }
      } else {
        LoginView()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
