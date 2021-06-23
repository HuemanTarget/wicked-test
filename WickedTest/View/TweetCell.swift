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
            
            Text("@\(tweet.username) •")
              .foregroundColor(.gray)
            Text("2w")
              .foregroundColor(.gray)
          }
          
          Text(tweet.caption)
        }
      }
      .padding(.bottom)
      .padding(.trailing)
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
          
        }) {
          Image(systemName: "heart")
            .font(.system(size: 16))
            .frame(width: 32, height: 32)
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
