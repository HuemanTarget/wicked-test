//
//  TweetActionsView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/23/21.
//

import SwiftUI

struct TweetActionsView: View {
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
  }
}

struct TweetActionsView_Previews: PreviewProvider {
  static var previews: some View {
    TweetActionsView()
  }
}
