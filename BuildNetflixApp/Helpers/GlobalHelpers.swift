//
//  GlobalHelpers.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/9/20.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https:/www.radiantmediaplayer.com/media/big=buck=bunny=360p.mpr")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!
var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}
let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(name: "Biginnings and Endings",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/102",
                       description: "Six months after the disapearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)

let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/103",
                       description: "Six months after the disapearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 69,
                       videoURL: exampleVideoURL)

let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disapearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 102,
                       videoURL: exampleVideoURL)

let episode4 = Episode(name: "Biginnings and Endings",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/107",
                       description: "Six months after the disapearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)

let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/106",
                       description: "Six months after the disapearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 69,
                       videoURL: exampleVideoURL)

let episode6 = Episode(name: "Ghosts",
                       season: 3,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/105",
                       description: "Six months after the disapearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 102,
                       videoURL: exampleVideoURL)

let allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

let exampleMoview1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [exampleMoview2, exampleMoview3, exampleMoview4, exampleMoview5, exampleMoview6, exampleMoview7 ],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers)
let exampleMoview2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    episodes: allExampleEpisodes,
    promotionHeadline: "Watch Season 2 Now",
    trailers: exampleTrailers)
let exampleMoview3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMoview4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 4 Now",
    trailers: exampleTrailers)
let exampleMoview5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)
let exampleMoview6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    episodes: allExampleEpisodes,
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers)
let exampleMoview7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopina", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis Triebel",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers)

var exampleMovies: [Movie] {
    return [exampleMoview1, exampleMoview2, exampleMoview3, exampleMoview4, exampleMoview5, exampleMoview6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappearances, the police form a task force. In 2052,Jonas learns that most of Winden perished in an apocalyptic event", season: 2, episode: 1)


// This Gradient can be used in different views
extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
