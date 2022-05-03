//
//  SideMenuViewModel.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/1/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case messages
    case notifications
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .messages: return "Messages"
        case .notifications: return "Notifications"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .messages: return "bubble.left"
        case .notifications: return "bell"
        case .logout: return "arrow.left.square"
        }
    }
    
    // Add a view as a component and that will be the destination we pass to the side menu
}
