//
//  NewTweetsView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/18/21.
//

import SwiftUI

struct NewTweetsView: View {
  
  
  var body: some View {
    NavigationView {
      VStack {
        HStack {
          Image("batman")
            .resizable()
            .scaledToFill()
            .clipped()
            .frame(width: 64, height: 64)
            .cornerRadius(32)
          
          Text("What's Happening")
            .foregroundColor(.gray)
          
          Spacer()
        }
        .padding()
        .navigationBarItems(leading:
                              Button(action: {
                                
                              }) {
                                Text("Cancel")
                              },
                            trailing: Button(action: {
                              
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
