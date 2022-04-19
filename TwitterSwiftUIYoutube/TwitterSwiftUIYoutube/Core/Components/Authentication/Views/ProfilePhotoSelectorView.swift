//
//  ProfilePhotoSelectorView.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/14/22.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        VStack{
            AuthHeaderView(titel1: "Setup account",
                           title2: "Add a profile photo")
            
            Button {
                
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                   profileImage
                        .resizable()
                        .modifier(ProfileImageModifier())
          
                
                } else {
                    Image(systemName: "person.badge.plus")
                        .resizable()
                    // .font(.system(size: 120))
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        
                    
//                    Image("plus_photo")
//                        .resizable()
                     .modifier(ProfileImageModifier())
                }
            
                
            }
            
            .sheet(isPresented: $showImagePicker,
                   onDismiss: loadImage) {
                   ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 44)
            if let selectedImage = selectedImage {
                Button{
                    viewModel.uploadProfileImage(selectedImage)
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)

    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content

             .scaledToFill()
             .frame(width: 180, height: 180)
             .clipShape(Circle())
    }
}


struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}



