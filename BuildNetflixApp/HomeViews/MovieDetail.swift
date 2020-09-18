//
//  MovieDetail.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/12/20.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            movieDetailToShow = nil
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .font(.system(size: 28))
                            
                        })
                    }
                    .padding(.horizontal, 22) // Move X/Cirle from the side
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            StandardHomeMovie(movie: movie).frame(width: screen.width / 2.5)
                            
                            MovieInfoSubheadline(movie: movie)
                            
                            if movie.promotionHeadline != nil {
                                Text(movie.promotionHeadline!)
                                    .bold()
                                    .font(.headline)
                                
                            }
                            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            }
                            CurrentEpisodeInformation(movie: movie)
                            CastInfo(movie: movie)
                            
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                    //
                                }
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup   ", isOn: true) {
                                    //
                                }
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                    //
                                }
                                Spacer()
                            }
                            .padding(.leading, 20)
                            
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                        }
                        .padding(.horizontal, 10)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                if showSeasonPicker {
                    Group {
                        Color.black.opacity(0.9)
                        
                        VStack(spacing: 40) {
                            Spacer()
                            
                            ForEach(0..<(movie.numberOfSeasons ?? 0 )) { season in
                                Button(action: {
                                    self.selectedSeason = season + 1 // account for 0 index
                                    self.showSeasonPicker = false
                                }, label: {
                                    Text("Season \(season + 1)")
                                        .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                        .bold()
                                        .font(selectedSeason == season + 1 ? .title : .title2)
                                })
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                showSeasonPicker = false
                            }, label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1) // make a little wider/rounder
                            })
                            .padding(30)
                        }
                    }
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMoview6, movieDetailToShow: .constant(nil))
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            HD()
        }
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 14))
                .bold()
        }
        .frame(width: 56, height: 25)
    }
}

struct HD: View {
    var body: some View {
        ZStack {
            Rectangle()
                .strokeBorder(Color.gray,lineWidth: 3)
                .background(Circle().foregroundColor(Color.black))
            
            Text("HD")
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 36, height: 25)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
            
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .font(.headline)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
