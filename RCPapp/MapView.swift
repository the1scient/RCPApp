import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -23.553644, longitude: -46.635035), // Coordenadas iniciais (San Francisco)
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1) // Zoom inicial
    )
    @State private var hospitals: [Hospital] = []
    @State private var userLocation: CLLocationCoordinate2D?
    let locationManager = CLLocationManager()
    
    
    let phoneNumber = "192"
    var body: some View {
        VStack{
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: hospitals) { hospital in
                MapPin(coordinate: hospital.coordinate, tint: .red)
            }
            .onAppear {
                //            requestLocation()
              //  fetchHospitals()
            }
            
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
               
            }
        }
    }
//    func requestLocation() {
//        locationManager.requestWhenInUseAuthorization()
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//            locationManager.startUpdatingLocation()
//        }
//    }



 //   func fetchHospitals() {
        // Aqui você deve implementar a lógica para buscar dados de hospitais próximos à localização atual do usuário.
        // Por exemplo, você pode usar uma API de busca de hospitais por geolocalização.
        // Após obter os dados, preencha o array 'hospitals' com os dados dos hospitais.
        // Certifique-se de preencher 'hospitals' na thread principal usando 'DispatchQueue.main.async'.
   // }


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

struct Hospital: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
