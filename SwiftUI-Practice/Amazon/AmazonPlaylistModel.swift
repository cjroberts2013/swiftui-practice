//
//  AmazonPlaylistModel.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/4/22.
//

import Foundation
//import SwiftUI

enum AmazonPlaylistModel: Int, CaseIterable {
    case favorite
    case country
    case study
    case valentine
    case alternative
    case mysoundtrack
    case yearinreview
    case discoverymix

    var title: String {
        switch self {
        case .favorite: return "Favorite"
        case .country: return "Country"
        case .study: return "Study"
        case .valentine: return "Valentine"
        case .alternative: return "Alternative"
        case .mysoundtrack: return "My Sound Track"
        case .yearinreview: return "Year in Review"
        case .discoverymix: return "Discovery Mix"
        }
    }
    
    var cardColor: String {
        switch self {
        case .favorite: return ".red"
        case .country: return ".blue"
        case .study: return ".green"
        case .valentine: return ".pink"
        case .alternative: return ".yellow"
        case .mysoundtrack: return ".purple"
        case .yearinreview: return ".teal"
        case .discoverymix: return ".orange"
        }
    }
}
