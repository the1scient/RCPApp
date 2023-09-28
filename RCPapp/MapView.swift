import CoreLocation
import MapKit
import SwiftUI

struct hospital : Identifiable {
    let id = UUID()
    let nomeHosp : String
    let coordinate : CLLocationCoordinate2D
}

struct MapView: View {
    
    let phoneNumber = "192"
    let locationManager = CLLocationManager()
    
    @State private var region = MKCoordinateRegion (
        center : .init(latitude : -23.669823, longitude: -46.7017363),
        span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    @State var hospitais = [
    hospital(nomeHosp: "Hospital Vidas", coordinate: CLLocationCoordinate2D(latitude: -23.6755458, longitude: -46.6981828)),
    hospital(nomeHosp: "Centro Clínico de Interlagos", coordinate: CLLocationCoordinate2D(latitude: -23.6817293, longitude: -46.7000632)),
    hospital(nomeHosp: "Hospital Regional Sul", coordinate: CLLocationCoordinate2D(latitude: -23.6637639, longitude: -46.7248589)),
    hospital(nomeHosp: "Hospital do Servidor Público Municipal", coordinate: CLLocationCoordinate2D(latitude: -23.6619165, longitude: -46.7223698))
    ]
    
    var body: some View {
        VStack{
            Button(action: {
                 if let phoneURL = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(phoneURL) {
                     UIApplication.shared.open(phoneURL, options: [:], completionHandler: nil)
                 }
             }) {
                 Text("Ligar para \(phoneNumber)")
                     .padding()
                     .background(Color.red)
                     .foregroundColor(.white)
                     .cornerRadius(10)
             }
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.none), annotationItems : hospitais)
                { h in
                MapAnnotation(coordinate: h.coordinate) {
                    Button("O"){
                        
                    }
                    .frame(width: 10, height: 10)
                    .background(.red)
                    .foregroundColor(.red)
                    .cornerRadius(100)
                    }
                }
                .onAppear {
                    locationManager.requestWhenInUseAuthorization()
                
            }
//            Map(coordinateRegion: $region, annotationItems: hospitais ,showsUserLocation: true, userTrackingMode: .constant(.follow))
//                .edgesIgnoringSafeArea(.all)
//                .onAppear {
//                    locationManager.requestWhenInUseAuthorization()
//                }
            
        }
        
      
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
