//
//  Episode.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/12/20.
//

import Foundation


struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
