//
//  UserProfileView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI

struct UserProfileView: View {
  let user: User
  
  var body: some View {
    ScrollView {
      VStack {
        ProfileHeaderView(user: user)
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


