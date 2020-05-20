//
//  Map.swift
//  Angel
//
//  Created by helenepetitjean on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI
import MapKit

struct Map: View {
    
    @State var manager = CLLocationManager()
    @State var alert = false
        
        var body: some View {
            VStack{
                 MapView(manager: $manager, alert: $alert).alert(isPresented: $alert) {
                        
                        Alert(title: Text("Please Enable Location Access In Settings Pannel !!!"))
                        
                    }
            }.edgesIgnoringSafeArea(.top)
          
            }
       
    }

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map()
    }
}

struct MapView : UIViewRepresentable {
    
    @Binding var manager : CLLocationManager
    @Binding var alert : Bool
    let map = MKMapView()
    
    func makeCoordinator() -> MapView.Coordinator {
        return Coordinator(parent1: self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        
        
        let center = CLLocationCoordinate2D(latitude: 43.3060333, longitude: 5.3975022)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 1000, longitudinalMeters: 1000)
        map.region = region
        manager.requestWhenInUseAuthorization()
        manager.delegate = context.coordinator
        manager.startUpdatingLocation()
        return map
    }
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
    }
    
    class Coordinator : NSObject,CLLocationManagerDelegate{
        
        var parent : MapView
        
        init(parent1 : MapView) {
            
            parent = parent1
        }
        
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            
            if status == .denied{
                
                parent.alert.toggle()
            }
        }
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            
            let location = locations.last
            let point = MKPointAnnotation()
            
            let georeader = CLGeocoder()
            georeader.reverseGeocodeLocation(location!) { (places, err) in
                
                if err != nil{
                    
                    print((err?.localizedDescription)!)
                    return
                }
                
                let place = places?.first?.locality
                point.title = place
                point.subtitle = "Current"
                point.coordinate = location!.coordinate
                self.parent.map.removeAnnotations(self.parent.map.annotations)
                self.parent.map.addAnnotation(point)
                
                let region = MKCoordinateRegion(center: location!.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                self.parent.map.region = region
            }
        }
    }
}
