//
//  NewTweetsView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI
import Kingfisher

struct NewTweetsView: View {
  @Environment(\.presentationMode) var presentationMode
  @State var captionText: String = ""
  @ObservedObject var uploadTweetVM = UploadTweetViewModel()
//  @Binding var isPresented: Bool
  
  var body: some View {
    NavigationView {
      VStack {
        HStack(alignment: .top) {
          if let user = AuthViewModel.shared.user {
            KFImage(URL(string: user.profileImageUrl))
              .resizable()
              .scaledToFill()
              .clipped()
              .frame(width: 64, height: 64)
              .cornerRadius(32)
          }
          
          
          TextArea("What's Happening", text: $captionText)
          
          Spacer()
        }
        .padding()
        .navigationBarItems(leading:
                              Button(action: {
//                                isPresented.toggle()
                                presentationMode.wrappedValue.dismiss()
                              }) {
                                Text("Cancel")
                              },
                            trailing: Button(action: {
                              uploadTweetVM.uploadTweet(caption: captionText)
                            }) {
                              Text("Tweet")
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                            })
        Spacer()
      }
    }
  }
}

struct NewTweetsView_Previews: PreviewProvider {
  static var previews: some View {
    NewTweetsView()
  }
}
