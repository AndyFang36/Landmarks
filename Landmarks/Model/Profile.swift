//
//  Profile.swift
//  Landmarks
//
//  Created by Andy Fang on 10/02/2024.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var goalDate = Date()
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        var id: String { rawValue }
    }
    var seasonalPhoto = Season.winter
    
    static let `default` = Profile(username: "g_kumar")
}
