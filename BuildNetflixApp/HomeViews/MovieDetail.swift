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
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // close this view
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
                        
                        //CustomTabSwitcher()
                    }
                    .padding(.horizontal, 10)
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMoview6)
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
