//
//  VideoPreviewImage.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/16/20.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingvideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingvideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingvideoPlayer, content: {
                SwiftUIVideoView(url: videoURL)
            })
            
        }
    }
}
    struct VideoPreviewImage_Previews: PreviewProvider {
        static var previews: some View {
            VideoPreviewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
        }
    }
