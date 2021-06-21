//
//  RegistrationView.swift
//  WickedTest
//
//  Created by Joshua Basche on 6/21/21.
//

import SwiftUI

struct RegistrationView: View {
  @State var email: String = ""
  @State var password: String = ""
  @State var username: String = ""
  @State var name: String = ""
  
  var body: some View {
    ZStack {
      VStack {
        Image("TwitterLogo")
          .resizable()
          .scaledToFill()
          .frame(width: 220, height: 100)
          .padding(.top, 88)
          .padding(.bottom, 32)
        
        VStack(spacing: 20) {
          CustomTextField(text: $name, placeholder: Text("Full Name"), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
          
          CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
          
          CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
          
          CustomSecureField(text: $password, placeholder: Text("Password"))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
        }
        .padding(.horizontal, 32)
        
//        HStack {
//          Spacer()
//
//          Button(action: {
//
//          }) {
//            Text("Forgot Password?")
//              .font(.footnote)
//              .bold()
//              .foregroundColor(.white)
//              .padding(.top, 16)
//              .padding(.trailing, 32)
//          }
//        }
        
        Button(action: {
          
        }) {
          Text("Sign Up")
            .font(.headline)
            .foregroundColor(Color(#colorLiteral(red: 0.1170291379, green: 0.6328371167, blue: 0.951066196, alpha: 1)))
            .frame(width: 360, height: 50)
            .background(Color.white)
            .cornerRadius(25)
            .padding()
        }
        
        Spacer()
        
        HStack {
          Text("Already have an account?")
            .font(.system(size: 14))
          Text("Sign In")
            .font(.system(size: 14, weight: .semibold))
        }
        .foregroundColor(.white)
        .padding(.bottom, 40)
      }
    }
    .background(Color(#colorLiteral(red: 0.1170291379, green: 0.6328371167, blue: 0.951066196, alpha: 1)))
    .ignoresSafeArea()
  }}

struct RegistrationView_Previews: PreviewProvider {
  static var previews: some View {
    RegistrationView()
  }
}
