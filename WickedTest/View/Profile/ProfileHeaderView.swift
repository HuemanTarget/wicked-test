//
//  ProfileHeaderView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
  let profileVM: ProfileViewModel
  
  @State var selectedFilter: TweetFilterOptions = .tweets
  @Binding var isFollowed: Bool
  
  var body: some View {
    VStack {
      KFImage(URL(string: profileVM.user.profileImageUrl))
        .resizable()
        .scaledToFill()
        .clipped()
        .frame(width: 120, height: 120)
        .cornerRadius(120 / 2)
        .shadow(color: .black, radius: 6 , x: 0.0, y: 0.0)
      
      Text(profileVM.user.fullname)
        .font(.system(size: 16, weight: .semibold))
        .padding(.top, 8)
      
      Text("@\(profileVM.user.username)")
        .font(.subheadline)
        .foregroundColor(.gray)
      
      Text("Billionaire by day, Dark Knight by night")
        .font(.system(size: 14))
        .padding(.top, 8)
      
      HStack(spacing: 40) {
        VStack {
          Text("12")
            .font(.system(size: 16))
            .bold()
          Text("Followers")
            .font(.footnote)
            .foregroundColor(.gray)
        }
        
        VStack {
          Text("12")
            .font(.system(size: 16))
            .bold()
          Text("Following")
            .font(.footnote)
            .foregroundColor(.gray)
        }
      }
      .padding()
      
      ProfileActionButtonView(isFollowed: $isFollowed, profileVM: profileVM)
      
      FilterButtonView(selectedOption: $selectedFilter)
        .padding()
      
      Spacer()
    }
  }
}

//struct ProfileHeaderView_Previews: PreviewProvider {
//  static var previews: some View {
//    ProfileHeaderView()
//  }
//}
