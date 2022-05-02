//
//  ContentView.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white)
                Text("Hello, world!")
                    .padding()
            }
            .navigationBarItems(leading: Button(action: {
                print("Button tapped!")
            }, label: {
                Image(systemName: "list.bullet")
                    .foregroundColor(.black)
            }))
            .navigationTitle("Home")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
    }
}
