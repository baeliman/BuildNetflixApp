//
//  WhiteButton.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/10/20.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    
    var action: () -> Void
    var body: some View {
        
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
                
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor) //backgroundColor is var defined above
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        })
    }
    
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            PlayButton(text: "Play",
                        imageName: "play.fill") {
                // Action goes here
            }
        }
        
    }
}
