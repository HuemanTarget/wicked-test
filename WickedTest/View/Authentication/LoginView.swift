//
//  LoginView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/21/21.
//

import SwiftUI

struct LoginView: View {
  @State var email: String = ""
  @State var password: String = ""
  
  var body: some View {
    ZStack {
      VStack {
        Image("TwitterLogo")
          .resizable()
          .scaledToFill()
          .frame(width: 220, height: 100)
          .padding(.top, 88)
        
        VStack {
          CustomTextField(text: $email, placeholder: Text("Email"))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .padding()
            .foregroundColor(.white)
          
          CustomTextField(text: $password, placeholder: Text("Password"))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .padding()
            .foregroundColor(.white)
        }
        
        Spacer()
      }
    }
    .background(Color(#colorLiteral(red: 0.1170291379, green: 0.6328371167, blue: 0.951066196, alpha: 1)))
    .ignoresSafeArea()
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
