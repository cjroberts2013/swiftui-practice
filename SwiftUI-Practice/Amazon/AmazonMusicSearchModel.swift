//
//  AmazonMusicSearchModel.swift
//  SwiftUI-Practice
//
//  Created by Charles Roberts on 5/2/22.
//

import Foundation

enum AmazonMusicSearchModel: Int, CaseIterable {
    case podcasts
    case djmode
    case live
    case musicvideos

    var title: String {
        switch self {
        case .podcasts: return "Podcasts"
        case .djmode: return "DJ Mode"
        case .live: return "Live"
        case .musicvideos: return "Music Videos"
        }
    }
    
    var imageName: String {
        switch self {
        case .podcasts: return "mic.circle.fill"
        case .djmode: return "music.mic.circle.fill"
        case .live: return "antenna.radiowaves.left.and.right.circle.fill"
        case .musicvideos: return "video.fill"
        }
    }
    
}
