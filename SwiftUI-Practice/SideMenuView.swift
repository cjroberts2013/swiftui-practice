//
//  SideMenuView.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/1/22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(destination: Text(option.title)) { // Add a view instead of the Text to build out further
                        SideMenuOptionView(option: option)
                    }
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
