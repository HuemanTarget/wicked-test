//
//  TweetActionsView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/23/21.
//

import SwiftUI

struct TweetActionsView: View {
  let tweet: Tweet
  @ObservedObject var tweetActionVM: TweetActionViewModel
  
  init(tweet: Tweet) {
    self.tweet = tweet
    self.tweetActionVM = TweetActionViewModel(tweet: tweet)
  }
  
  var body: some View {
    HStack {
      Button(action: {
        
      }) {
        Image(systemName: "bubble.left")
          .font(.system(size: 16))
          .frame(width: 32, height: 32)
      }
      
      Spacer()
      Button(action: {
        
      }) {
        Image(systemName: "arrow.2.squarepath")
          .font(.system(size: 16))
          .frame(width: 32, height: 32)
      }
      Spacer()
      Button(action: {
        tweetActionVM.didLike ? tweetActionVM.unlikeTweet() : tweetActionVM.likeTweet()
      }) {
        Image(systemName: tweetActionVM.didLike ? "heart.fill" : "heart")
          .font(.system(size: 16))
          .frame(width: 32, height: 32)
          .foregroundColor(tweetActionVM.didLike ? .red : .gray)
      }
      Spacer()
      Button(action: {
        
      }) {
        Image(systemName: "bookmark")
          .font(.system(size: 16))
          .frame(width: 32, height: 32)
      }
    }
    .foregroundColor(.gray)
    .padding(.horizontal)
  }
}
