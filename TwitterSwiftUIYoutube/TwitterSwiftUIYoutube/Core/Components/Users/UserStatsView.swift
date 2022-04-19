//
//  UserStatsView.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/9/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4){
                Text("807").bold()
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            HStack(spacing: 4){
                Text("6.9M").bold()
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
