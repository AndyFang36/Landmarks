//
//  MapView.swift
//  Landmarks
//
//  Created by Andy Fang on 08/02/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    // Setting the initial zoom
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"
        var id: Zoom {
            return self
        }
    }
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium

    // longitude and latitude
    var delta: CLLocationDegrees {
        switch zoom {
            case .near: return 0.02
            case .medium: return 0.2
            case .far: return 2
        }
    }
    var coordinate: CLLocationCoordinate2D
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
