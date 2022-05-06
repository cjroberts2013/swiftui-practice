//
//  SideMenuViewModel.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/1/22.
//

import Foundation
import UIKit
import SwiftUI

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case messages
    case notifications
    case amazon
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .messages: return "Messages"
        case .notifications: return "Notifications"
        case .amazon: return "Amazon Music"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .messages: return "bubble.left"
        case .notifications: return "bell"
        case .amazon: return "music.note"
        }
    }
    
    func viewController() -> some View {
        switch self {
        case .profile: return AmazonTabController()
        case .messages: return AmazonTabController()
        case .notifications: return AmazonTabController()
        case .amazon: return AmazonTabController()
        }
    }
    
    // Add a view as a component and that will be the destination we pass to the side menu
}
