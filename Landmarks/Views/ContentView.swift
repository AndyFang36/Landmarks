//
//  ContentView.swift
//  Landmarks
//
//  Created by Andy Fang on 08/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
