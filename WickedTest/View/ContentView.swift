//
//  ContentView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

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
