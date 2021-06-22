//
//  SearchViewModel.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/22/21.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
  @Published var users = [User]()
  
  
  init() {
    fetchUsers()
  }
  
  func fetchUsers() {
    COLLECTION_USERS.getDocuments { snapshot, error in
      if let error = error {
        print("DEBUG: Failed to get users \(error.localizedDescription)")
        return
      }
      
      guard let documents = snapshot?.documents else { return }
      
      self.users = documents.map({ User(dictionary: $0.data())})
      
    }
  }
}
 
