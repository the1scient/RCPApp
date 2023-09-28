//
//  ContentView.swift
//  RCPapp
//
//  Created by Student16 on 19/09/23.
//

import SwiftUI
import Foundation
import AVFoundation

struct Music {
    var name: String
    var artist: String
    var image: String
    var file : String
}

var player : AVAudioPlayer!

func playSound(key: String) {
     
    let path = Bundle.main.path(forResource: key, ofType:"mp3")!
    let url = URL(fileURLWithPath: path)
    
    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
    }
    catch {
        print("Error playing: \(error)")
    }
}

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 200, green: 200, blue: 200, alpha: 0.5)
    }
    
    var body: some View {
        
        TabView {
            HomeView()
                .font(.system(size: 20, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
            InfoView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Info")
                }
            MapView()
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    
                    Image(systemName: "map.circle")
                    Text("Mapa")
                }
            LoginView()
                .font(.system(size: 20, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Perfil")
                }
        } .accentColor(.red.opacity(0.75))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
