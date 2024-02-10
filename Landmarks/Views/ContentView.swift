//
//  ContentView.swift
//  Landmarks
//
//  Created by Andy Fang on 08/02/2024.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case featured
        case list
    }
    
    @State private var selectoin: Tab = .featured
    
    var body: some View {
        TabView(selection: $selectoin) {
            CategoryHome().tabItem { Label("Featured", systemImage: "star") }.tag(Tab.featured)
            LandmarkList().tabItem { Label("List", systemImage: "list.bullet") }.tag(Tab.list)
        }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
