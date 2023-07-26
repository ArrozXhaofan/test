//
//  MapView.swift
//  Swift UI tutorial
//
//  Created by Jean L2 on 19/06/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) ->  MKMapView {
    
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinate = CLLocationCoordinate2D(latitude: -11.939419, longitude:-77.134102)
        
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region,animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
