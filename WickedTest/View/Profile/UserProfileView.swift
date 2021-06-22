//
//  UserProfileView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI

struct UserProfileView: View {
  let user: User
  @ObservedObject var profileVM: ProfileViewModel
  
  init(user: User) {
    self.user = user
    self.profileVM = ProfileViewModel(user: user)
  }
  
  var body: some View {
    ScrollView {
      VStack {
        ProfileHeaderView(profileVM: profileVM, isFollowed: $profileVM.isFollowed)
          .padding()
        
        ForEach(0..<9) { tweet in
          TweetCell()
            .padding(40)
        }
      }
      
      .navigationTitle("batman")
    }
  }
}


