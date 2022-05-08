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
    case settings
    case amazon
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .messages: return "Messages"
        case .settings: return "Settings"
        case .amazon: return "Amazon Music"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .messages: return "bubble.left"
        case .settings: return "gear"
        case .amazon: return "music.note"
        }
    }
    
    func viewController() -> some View {
        switch self {
        case .profile: return SettingsViewController()
        case .messages: return SettingsViewController()
        case .settings: return SettingsViewController()
        case .amazon: return SettingsViewController()
        }
    }
    
    // Add a view as a component and that will be the destination we pass to the side menu
}
