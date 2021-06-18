//
//  UserProfileView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI

struct UserProfileView: View {
  @State var selectedFilter: TweetFilterOptions = .tweets
  
  var body: some View {
    ScrollView {
      VStack {
        ProfileHeaderView()
          .padding()
        
        FilterButtonView(selectedOption: $selectedFilter)
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

struct UserProfileView_Previews: PreviewProvider {
  static var previews: some View {
    UserProfileView()
  }
}
