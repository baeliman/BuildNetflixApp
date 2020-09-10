//
//  Moview.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/9/20.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
