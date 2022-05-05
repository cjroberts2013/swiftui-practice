//
//  AmazonTabController.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/3/22.
//

import SwiftUI

struct AmazonTabController: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .systemBackground
      }
    
    var body: some View {
        TabView {
            AmazonMusicSearch()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Find")
                }
            
            AmazonMusicLibrary()
                .tabItem {
                    Image(systemName: "headphones")
                    Text("Library")
                }
            
        }
    }
}

struct AmazonTabController_Previews: PreviewProvider {
    static var previews: some View {
        AmazonTabController()
    }
}


//AmazonMusicSearch(text: $text)
