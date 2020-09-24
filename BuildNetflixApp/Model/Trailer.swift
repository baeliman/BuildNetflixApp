//
//  Trailer.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/16/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
