//
//  TwitterSwiftUIYoutubeApp.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/8/22.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIYoutubeApp: App {
    @StateObject var viewModel = AuthViewModel()

    
    init() {
        FirebaseApp.configure()
        
        //let the user logout each time 
//        if let user = Auth.auth().currentUser {
//            try? Auth.auth().signOut()
//        }
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
               ContentView()
               // SideMenuView()
               // ProfilePhotoSelectorView()
             //  LoginView()
              //  FeedView()
                
            }
        //    .navigationViewStyle(.stack)
            .environmentObject(viewModel)
        }
    }
}
