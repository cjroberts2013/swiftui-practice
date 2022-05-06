//
//  ScrollingPillButtonView.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/4/22.
//

import SwiftUI

struct ScrollingPillButtonView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack (spacing: 12) {
                ForEach(AmazonMusicSearchModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title)) { // Add a view instead of the Text to build out further
//                        Button {
//                            print("Button Tapped")
//                        } label: {
//                            HStack {
//                                Image(systemName: option.imageName)
//                                Text(option.title)
//                                    .font(.caption)
//                                    .lineLimit(1)
//                            }
//                            .foregroundColor(.white)
//                            .fixedSize()
//                        }
//                        .padding()
//                        .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.6))
//                        .clipShape(Capsule())
                        
                        Text(option.title)
                            .font(.callout)
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Capsule().fill(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.6)))
                            .contentShape(Capsule())
                    }
                }
            }
            .padding()
        }
    }
}

struct ScrollingPillButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingPillButtonView()
    }
}
