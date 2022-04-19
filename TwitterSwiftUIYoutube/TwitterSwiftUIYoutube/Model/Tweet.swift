//
//  Tweet.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/17/22.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: User?
    var didLike: Bool? = false
}
