//
//  TweetTest.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 4/19/22.
//

import SwiftUI

struct TweetTest: View {
    
    @ObservedObject var viewModel: TweetRowViewModel
    
    init(tweet: Tweet) {
        self.viewModel = TweetRowViewModel(tweet: tweet)
    }
    
    var body: some View {
        if let user = viewModel.tweet.user {
            Text(user.username)
        }
    }
}

//
//struct TweetTest_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetTest(tweet: Tweet)
//        
//    }
//}
