//
//  MapView.swift
//  belajar-swiftui
//
//  Created by lukmanma on 06/11/23.
//

import SwiftUI
import MapKit

protocol delegateDetailMap{
    func detailData()
}

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region: MKCoordinateRegion
    
       init(coordinate: CLLocationCoordinate2D) {
           self.coordinate = coordinate
           _region = State(initialValue: MKCoordinateRegion(
                   center: coordinate,
                   span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
               ))
       }
       
       var body: some View {
           Map(coordinateRegion: $region, interactionModes: .pan)
               .ignoresSafeArea()
       }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))

    }
}
