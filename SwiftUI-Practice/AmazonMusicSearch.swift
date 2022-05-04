//
//  AmazonMusicSearch.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/2/22.
//

import SwiftUI

struct AmazonMusicSearch: View {
    @Binding var text: String
    
    var body: some View {
        ZStack {
//            Rectangle()
//                .background(.white)
//                .ignoresSafeArea()
            
            // Top capsule buttons
            VStack {
                
                TextField("Search music and podcasts", text: $text)
                    .padding()
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(30)
                    .padding()
                    .padding(.bottom, 16)
                
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
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .fixedSize()
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.6))
                    .clipShape(Capsule())

                }
                .padding()
                
                GenreCardView(title: "Poppp", primaryColor: .blue)
                
                Spacer()
            }
            
            
            
            // Music genre cards
            // How to make a collection type view
        }
        
    }
}

struct AmazonMusicSearch_Previews: PreviewProvider {
    static var previews: some View {
        AmazonMusicSearch(text: .constant("Testing"))
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
                .frame(width: 180, height: 75)
            
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
