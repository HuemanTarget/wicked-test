//
//  Message.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/17/21.
//

import Foundation
import SwiftUI

struct MockMessage: Identifiable {
  let id: Int
  let imageName: String
  let messageText: String
  let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
  .init(id: 0, imageName: "spiderman", messageText: "Hey what's up?", isCurrentUser: false),
  .init(id: 1, imageName: "batman", messageText: "Not much you", isCurrentUser: true),
  .init(id: 2, imageName: "batman", messageText: "Hows the Marvel Uni?", isCurrentUser: true),
  .init(id: 3, imageName: "spiderman", messageText: "Pretty Good.", isCurrentUser: false),
  .init(id: 4, imageName: "spiderman", messageText: "How's Robin?", isCurrentUser: false),
  .init(id: 5, imageName: "batman", messageText: "Robin Who?", isCurrentUser: true),
  .init(id: 6, imageName: "spiderman", messageText: "Going that well huh", isCurrentUser: false)
]
