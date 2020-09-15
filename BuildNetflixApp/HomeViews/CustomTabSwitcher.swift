//
//  CustomTabSwitcher.swift
//  BuildNetflixApp
//
//  Created by Doug Belli on 9/14/20.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs: [CustomTab]
    var movie: Movie
    @State private var currentTab: CustomTab = .episodes
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
        // systemFont was set in Button/label - If using other font we must change here also
    }
    
    var body: some View {
        VStack {
            // Custom tabpicker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // Red Bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            })
                            .frame(width: widthForTab(tab), height: 30)

                           // .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            // Selected View
            switch currentTab {
            case .episodes:
                Text("\(CustomTab.episodes.rawValue)")
            case .trailers:
                Text("Trailers")
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: exampleMoview1)
        }
    }
}
