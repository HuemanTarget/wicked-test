//
//  UploadTweetViewModel.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/23/21.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject {
  
  func uploadTweet(caption: String) {
    guard let uid = AuthViewModel.shared.userSession?.uid else { return }
    guard let user = AuthViewModel.shared.user else { return }
    let docRef= 
    
    let data: [String: Any] = ["uid": user.id,
                               "caption": caption,
                               "fullname": user.fullname,
                               "timestamp": Timestamp(date: Date()),
                               "username": user.username,
                               "profileImageUrl": user.profileImageUrl,
                               "likes": 0]
    
  }
}
