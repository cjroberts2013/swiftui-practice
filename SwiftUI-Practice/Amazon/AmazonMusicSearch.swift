//
//  AmazonMusicSearch.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/2/22.
//

import SwiftUI

struct AmazonMusicSearch: View {
    
    var body: some View {
        ZStack {
            NavigationView {
                
            
            
            
                VStack {
                    
                    Text("Search music and podcasts                                ")
                        .padding()
                        .foregroundColor(.white)
                        .background(.gray)
                        .cornerRadius(24)
                        .padding()
                        .padding(.bottom, 16)
                    
                    
                    ScrollView(.vertical) {
                        ScrollingPillButtonView()
                        HStack {
                            Text("Music By Genre")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                            Spacer()
                            Button {
                                print("See more tapped")
                            } label: {
                                Text("SEE MORE")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .fixedSize()
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.6))
                            .clipShape(Capsule())

                        }
                        .padding()
                        
                        VStack {
                            HStack {
                                GenreCardView(title: "Pop", primaryColor: .pink)
                                GenreCardView(title: "Country", primaryColor: .yellow)

                            }
                            HStack {
                                GenreCardView(title: "Rock", primaryColor: .red)
                                GenreCardView(title: "Hip-Hop", primaryColor: .purple)
                            }
                            HStack {
                                GenreCardView(title: "R&B", primaryColor: .orange)
                                GenreCardView(title: "Christian", primaryColor: .green)
                            }
                        }
                        
                        HStack {
                            Text("Listen Your Way")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                            Spacer()
                            Button {
                                print("See more tapped")
                            } label: {
                                Text("SEE MORE")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .fixedSize()
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.6))
                            .clipShape(Capsule())

                        }
                        .padding()
                        
                        VStack {
                            HStack {
                                GenreCardView(title: "Charts", primaryColor: .pink)
                                GenreCardView(title: "New Releases", primaryColor: .purple)

                            }
                            HStack {
                                GenreCardView(title: "Stations", primaryColor: .yellow)
                                GenreCardView(title: "Playlists", primaryColor: .teal)
                            }
                            HStack {
                                GenreCardView(title: "Spatial Audio", primaryColor: .gray)
                                GenreCardView(title: "APAHM", primaryColor: .blue)
                            }
                        }
                        Spacer()
                    }
                    
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            print("Bell iccon tapped")
                        } label: {
                            Image(systemName: "bell.fill")
                                .foregroundColor(.gray)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            print("Settings iccon tapped")
                        } label: {
                            Image(systemName: "gear")
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                Spacer()
                }
            // Music genre cards
            // How to make a collection type view
        }
        
    }
}

struct AmazonMusicSearch_Previews: PreviewProvider {
    static var previews: some View {
        AmazonMusicSearch()
            .preferredColorScheme(.light)
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
    }
}

struct GenreCardView: View {
    let title: String
    let primaryColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(LinearGradient(gradient: Gradient(colors: [primaryColor, .black]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 170, height: 75)
            
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}

struct ScrollingPillButtonView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(AmazonMusicSearchModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title)) { // Add a view instead of the Text to build out further
                        Button {
                            print("Button Tapped")
                        } label: {
                            HStack {
                                Image(systemName: option.imageName)
                                Text(option.title)
                                    .font(.caption)
                                    .lineLimit(1)
                            }
                            .foregroundColor(.white)
                            .fixedSize()
                        }
                        .padding()
                        .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.6))
                        .clipShape(Capsule())
                    }
                }
            }
            .padding()
        }
    }
}
