//
//  ContentView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      TabView {
        Text("Feed")
          .tabItem {
            Image(systemName: "house")
            Text("Home")
          }
        
        Text("Search")
          .tabItem {
            Image(systemName: "magnifyingglass")
            Text("Search")
          }
        
        Text("Message")
          .tabItem {
            Image(systemName: "envelope")
            Text("Messages")
          }
      }
      .navigationBarTitle("Home", displayMode: .inline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
