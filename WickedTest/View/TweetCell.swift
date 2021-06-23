//
//  TweetCell.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI
import Kingfisher

struct TweetCell: View {
  let tweet: Tweet
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack(alignment: .top, spacing: 12) {
        KFImage(URL(string: tweet.profileImageUrl))
          .resizable()
          .scaledToFill()
          .clipped()
          .frame(width: 56, height: 56)
          .cornerRadius(56 / 2)
          .padding(.leading, 5)
        VStack(alignment: .leading, spacing: 4) {
          HStack {
            Text(tweet.fullname)
              .font(.system(size: 14, weight: .semibold))
              .foregroundColor(.black)
            
            Text("@\(tweet.username) •")
              .foregroundColor(.gray)
            Text("2w")
              .foregroundColor(.gray)
          }
          
          Text(tweet.caption)
            .foregroundColor(.black)
        }
      }
      .padding(.bottom)
      .padding(.trailing)
      
      TweetActionsView(tweet: tweet)
      
      Divider()
    }
    .padding(.leading, -10)
  }
}

//struct TweetCell_Previews: PreviewProvider {
//  static var previews: some View {
//    TweetCell()
//  }
//}
