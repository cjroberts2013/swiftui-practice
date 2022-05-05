//
//  AmazonMusicLibrary.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/4/22.
//

import SwiftUI

struct AmazonMusicLibrary: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Library")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                ScrollingPillButtonView()
                    .padding(.bottom, 12)
                
                HStack {
                    Text("Playlists")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                ScrollView (.horizontal) {
                    HStack {
                        PlaylistsCardView(title: "Favorite", cardColor: .red)
                        PlaylistsCardView(title: "Country", cardColor: .blue)
                        PlaylistsCardView(title: "Study", cardColor: .green)
                        PlaylistsCardView(title: "Valentine...", cardColor: .pink)
                    }
                }
                .padding(.bottom, 12)
                
                HStack {
                    Text("Made for you")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                ScrollView (.horizontal) {
                    HStack {
                        PlaylistsCardView(title: "Alternative", cardColor: .yellow)
                        PlaylistsCardView(title: "My Sound...", cardColor: .purple)
                        PlaylistsCardView(title: "Year in R...", cardColor: .teal)
                        PlaylistsCardView(title: "Discovery", cardColor: .orange)
                        PlaylistsCardView(title: "Favorite", cardColor: .red)
                        PlaylistsCardView(title: "Country", cardColor: .blue)
                        PlaylistsCardView(title: "Study", cardColor: .green)
                        PlaylistsCardView(title: "Valentine...", cardColor: .pink)
                    }
                }
            }
            .padding()
        }
    }
}

struct AmazonMusicLibrary_Previews: PreviewProvider {
    static var previews: some View {
        AmazonMusicLibrary()
    }
}

struct PlaylistsCardView: View {
    var title: String
    var cardColor: Color
    
    var body: some View {
        VStack (alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(cardColor)
                .frame(width: 100, height: 100)
            
            HStack {
                Text(title)
            }
        }
    }
}
