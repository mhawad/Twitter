//
//  User.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/15/22.
//

import FirebaseFirestoreSwift
import Firebase

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
   // let uid: UUID
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == id }
}
