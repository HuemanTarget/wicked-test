//
//  UserCell.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import SwiftUI

struct UserCell: View {
  var body: some View {
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
        Text("Eddie Brock")
          .font(.system(size: 14))
      }
    }
  }
}

struct UserCell_Previews: PreviewProvider {
  static var previews: some View {
    UserCell()
  }
}
