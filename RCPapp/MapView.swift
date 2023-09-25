import CoreLocation
import MapKit
import SwiftUI

struct MapView: View {
    
    let phoneNumber = "192"
    let locationManager = CLLocationManager()
    
    @State var region = MKCoordinateRegion(
        center: .init(latitude: 37.334_900,longitude: -122.009_020),
        span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        VStack{
            Button(action: {
                 if let phoneURL = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(phoneURL) {
                     UIApplication.shared.open(phoneURL, options: [:], completionHandler: nil)
                 }
             }) {
                 Text("Ligar para \(phoneNumber)")
                     .padding()
                     .background(Color.blue)
                     .foregroundColor(.white)
                     .cornerRadius(10)
             }
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    locationManager.requestWhenInUseAuthorization()
                }
            
        }
        
      
    }
}
