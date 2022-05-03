//
//  ContentView.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    @Binding var text: String
    
    var body: some View {
        NavigationView {
//            ZStack {
//                if isShowing {
//                    SideMenuView(isShowing: $isShowing)
//                }
//                HomeView()
//                    .cornerRadius(isShowing ? 20 : 10)
//                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 72 : 0)
//                    .scaleEffect(isShowing ? 0.8 : 1)
//                    .navigationBarItems(leading: Button(action: {
//                        print("Button tapped!")
//                        withAnimation(.spring()) {
//                            isShowing.toggle()
//                        }
//                    }, label: {
//                        Image(systemName: "list.bullet")
//                            .foregroundColor(.black)
//                    }))
//            }
//            .onAppear {
//                isShowing = false
//            }
        
        AmazonMusicSearch(text: $text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant("Testing"))
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
        }
        
        .navigationTitle("Home")
    }
}
