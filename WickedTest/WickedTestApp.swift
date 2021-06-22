//
//  WickedTestApp.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI
import Firebase

@main
struct WickedTestApp: App {
  
  init() {
    FirebaseApp.configure()
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView().environmentObject(AuthViewModel())
    }
  }
}
