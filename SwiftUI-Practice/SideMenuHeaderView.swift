//
//  SideMenuHeaderView.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/1/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            
            Button {
                print("Tapped x button")
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .padding()
            }

            VStack (alignment: .leading) {
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Charles Roberts")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@cjrobertstech")
                    .font(.system(size: 14))
                    .padding(.bottom, 32)
                
                HStack (spacing: 12) {
                    HStack (spacing: 4) {
                        Text("929").bold()
                        Text("Following")
                    }
                    
                    HStack (spacing: 4) {
                        Text("895").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
