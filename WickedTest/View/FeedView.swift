//
//  FeedView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct FeedView: View {
  @State var isShowingNewTweetView: Bool = false
//  @EnvironmentObject var authVM: AuthViewModel
  @ObservedObject var feedVM = FeedViewModel()
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      ScrollView {
        VStack {
          ForEach(feedVM.tweets) { tweet in
            NavigationLink(destination: TweetDetailView(tweet: tweet)) {
              TweetCell(tweet: tweet)
            }
          }
        }
        .padding()
      }
      
      Button(action: {
        isShowingNewTweetView.toggle()
      }) {
        Image("Tweet")
          .resizable()
          .renderingMode(.template)
          .frame(width: 32, height: 32)
          .padding()
      }
      .background(Color.blue)
      .foregroundColor(.white)
      .clipShape(Circle())
      .padding()
      .fullScreenCover(isPresented: $isShowingNewTweetView) {
        NewTweetsView()
      }
    }
  }
}

struct FeedView_Previews: PreviewProvider {
  static var previews: some View {
    FeedView()
  }
}
