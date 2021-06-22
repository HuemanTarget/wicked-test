//
//  ProfileActionButtonView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
  @Binding var isFollowed: Bool
  
  let profileVM: ProfileViewModel

  
  var body: some View {
    
    VStack {
      if profileVM.user.isCurrentUser {
        Button(action: {
        
      }) {
        Text("Edit Profile")
          .frame(width: 360, height: 40)
          .background(Color.blue)
          .foregroundColor(.white)
      }
        .cornerRadius(20)
      } else {
        HStack {
          Button(action: {
            isFollowed ? profileVM.unfollow() : profileVM.follow()
          }) {
            Text(isFollowed ? "Following" : "Follow")
              .frame(width: 180, height: 40)
              .background(Color.blue)
              .foregroundColor(.white)
          }
          .cornerRadius(20)
          
          Button(action: {
            
          }) {
            Text("Message")
              .frame(width: 180, height: 40)
              .background(Color.purple)
              .foregroundColor(.white)
          }
          .cornerRadius(20)

        }
      }
    }
  }
}

//struct ProfileActionButtonView_Previews: PreviewProvider {
//  static var previews: some View {
//    ProfileActionButtonView(isCurrentUser: false)
//  }
//}
