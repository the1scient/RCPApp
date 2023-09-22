//
//  ContentView.swift
//  RCPapp
//
//  Created by Student16 on 19/09/23.
//

import SwiftUI

struct Music{
    var name: String
    var artist: String
    var image: String
}

struct ContentView: View {
    
    
    
    var musicList = [
        Music(name: "Bones", artist: "Imagine Dragons", image: "https://i.scdn.co/image/ab67616d0000b273fc915b69600dce2991a61f13"),
        Music(name: "do wanna taste it", artist: "Wig Wam", image: "https://static.qobuz.com/images/covers/kb/kc/t8o6zveb8kckb_600.jpg"),
        Music(name: "annihilation", artist: " Lil Wayne, Metro Boomin, Offset, Swae Lee 2", image: "https://i.scdn.co/image/ab67616d0000b2736ed9aef791159496b286179f"),
        // Adicione mais músicas conforme necessário
    ]
    
    var body: some View {
        
        
        TabView {
            
            
            VStack{
                VStack{
                    Text("RCPApp").font(.title)
                    Image(systemName: "heart.fill").foregroundColor(.red)
                        .font(.system(size: 30))
                    
                    Circle().padding(.top).frame(width: 200.0, height: 200.0)
                    
                }
                Spacer()
                    .frame(height: 50)
                
                ScrollView {
                    VStack{
                        ForEach(musicList, id: \.name){ musica in
                            VStack{
                                Spacer()
                                HStack{
                                    
                                    AsyncImage(url: URL(string: musica.image)){ image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                        
                                    } placeholder: {
                                        Color.gray
                                    }
                                    .frame(width: 120, height: 120)
                                    .clipShape(Circle())
                                    
                                    VStack (alignment: .leading){
                                        Text(musica.name).font(.title2).fontWeight(.semibold)
                                        Text(musica.artist).font(.subheadline)
                                    }
                                  
                                    
                                    
                           //         Label(musica.artist)
                                    
                                    Spacer()
                                    
                                }
                            }
                          
                            
                        }
                        
                        
                    }.padding(.trailing)
                    Spacer()
                }
                
                
            }
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "house.fill")
                Text("Homeeeee")
            }
            Text("infos")
                .font(.title)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Info")
                }
            Text("Mapa")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "map.circle")
                    Text("Mapa")
                }
            Text("perfil")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Perfil")
                    
                }
        }
        
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
