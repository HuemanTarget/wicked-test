//
//  UserProfileView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI

struct UserProfileView: View {
  var body: some View {
    ScrollView {
      VStack {
        ProfileHeaderView()
          .padding()
        
        FilterButtonView()
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
