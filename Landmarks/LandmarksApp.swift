//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Andy Fang on 08/02/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
#if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
#endif

// watchOS Notification
#if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
#endif

// Settings scene for MAC
#if os(macOS)
        Settings {
            LandmarkSettings()
        }
#endif
    }
}
