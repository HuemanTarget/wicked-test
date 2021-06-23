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
    guard let user = AuthViewModel.shared.user else { return }
    let docRef = COLLECTION_TWEETS.document()
    
    let data: [String: Any] = ["uid": user.id,
                               "caption": caption,
                               "fullname": user.fullname,
                               "timestamp": Timestamp(date: Date()),
                               "username": user.username,
                               "profileImageUrl": user.profileImageUrl,
                               "likes": 0,
                               "id": docRef.documentID]
    
    docRef.setData(data) { _ in
      print("DEBUG: Uploaded tweet success!")
    }
    
  }
}
