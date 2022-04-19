//
//  AuthHeaderView.swift
//  TwitterSwiftUIYoutube
//
//  Created by Mirna Helmy on 3/10/22.
//

import SwiftUI

struct AuthHeaderView: View {
    let titel1: String
    let title2: String
    
    var body: some View {
   
            VStack(alignment: .leading){
                HStack { Spacer() }
                Text(titel1)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(title2)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
        
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(titel1: "Hello", title2: "Welcome back")
    }
}
