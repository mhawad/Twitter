//
//  UploadTweetViewModel.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/17/22.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                //dismiss screen somehow
                self.didUploadTweet = true
            } else {
                // show error msg to user
            }
            
            
        }
    }
}
