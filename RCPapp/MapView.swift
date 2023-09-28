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
    hospital(nomeHosp: "Hospital Vidas", coordinate: CLLocationCoordinate2D(latitude: -23.6750734, longitude: -46.6856383)),
    hospital(nomeHosp: "Centro Clínico de Interlagos", coordinate: CLLocationCoordinate2D(latitude: -23.6775485, longitude: -46.6820012)),
    hospital(nomeHosp: "Hospital Regional Sul", coordinate: CLLocationCoordinate2D(latitude: -23.6637639, longitude: -46.7248589)),
    hospital(nomeHosp: "Hospital do Servidor Público Municipal", coordinate: CLLocationCoordinate2D(latitude: -23.566786, longitude: -46.639245)),
    hospital(nomeHosp: "Hospital Municipal Doutor Fernando Mauro Pires da Rocha - Campo Limpo", coordinate: CLLocationCoordinate2D(latitude: -23.6492392, longitude: -46.7492328)),
    hospital(nomeHosp: "Hospital Municipal M'Boi mirim", coordinate: CLLocationCoordinate2D(latitude: -23.6922669, longitude: -46.7755115)),
    hospital(nomeHosp: "Hospital Municipal da Vila Santa Catarina,2785 - Vila Santa Catarina", coordinate: CLLocationCoordinate2D(latitude: -46.6536434, longitude: -23.6574987)),
    hospital(nomeHosp: "Hospital Geral de Pedreira", coordinate: CLLocationCoordinate2D(latitude: -23.6811512, longitude: -46.6764103)),
    hospital(nomeHosp: "Assistência Médica ao Servidor Público Estadual de S. Paulo", coordinate: CLLocationCoordinate2D(latitude: -23.5963218, longitude: -46.6538787))
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
                     .background(Color.blue)
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
