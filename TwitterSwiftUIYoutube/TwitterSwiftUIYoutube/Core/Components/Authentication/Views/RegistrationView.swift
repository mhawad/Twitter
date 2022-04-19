//
//  RegistrationView.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/9/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            
            NavigationLink(destination: ProfilePhotoSelectorView(),
                           isActive: $viewModel.didAuthenticateUser,
                           label: { })
            AuthHeaderView(titel1: "Get started", title2: "Create your account")
            
    
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 isSecureField: true,
                                 text: $email)
                
                CustomInputField(imageName: "person",
                                 placeholderText: "Username",
                                 isSecureField: true,
                                 text: $username)
                
                CustomInputField(imageName: "person",
                                 placeholderText: "Full name",
                                 isSecureField: true,
                                 text: $fullname)
                
                CustomInputField(imageName: "lock",
                                 placeholderText: "Password",
                                 isSecureField: false,
                                 text: $password)
                
                
            }
            .padding(32)
            
            Button{
                viewModel.register(withEmail: email,
                                   password: password,
                                   fullname: fullname,
                                   username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea()
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
