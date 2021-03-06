//
//  ConversationCell.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct ConversationCell: View {
  var body: some View {
    VStack {
      HStack(spacing: 12) {
        Image("venom-10")
          .resizable()
          .scaledToFill()
          .clipped()
          .frame(width: 56, height: 56)
          .cornerRadius(28)
        VStack(alignment: .leading, spacing: 4) {
          Text("venom")
            .font(.system(size: 14, weight: .semibold))
          
          Text("Longer message text to see what happens when I do this")
            .font(.system(size: 14))
            .lineLimit(2)
        }
        .foregroundColor(.black)
        .frame(height: 64)
        .padding(.trailing)
      }
      Divider()
    }
  }
}

struct ConversationCell_Previews: PreviewProvider {
  static var previews: some View {
    ConversationCell()
  }
}
