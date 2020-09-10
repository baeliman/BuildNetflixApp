//
//  GlobalHelpers.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/9/20.
//

import Foundation

let exampleMoview1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMoview2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMoview3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMoview4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMoview5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMoview6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"])

let exampleMovies: [Movie] = [exampleMoview1, exampleMoview2, exampleMoview3, exampleMoview4, exampleMoview5, exampleMoview6]
