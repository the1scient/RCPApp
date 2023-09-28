//
//  homeView.swift
//  RCPapp
//
//  Created by Student16 on 26/09/23.
//

import SwiftUI
import AudioToolbox

struct HomeView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var musicList = [
        Music(id: "", name: "Stayin Alive", artist: "Bee Gees", image: "https://i.scdn.co/image/ab67616d0000b273e39f29035ee5c2bf71e9cfb7", file: "hahaha"),
    ]
    
    @State var isPlaying : Bool = false;
    @State var isRotating : Bool = false;
    @State var rotation = 0.0
    
    
    func vibrar() {
        
        if isPlaying == true {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        }
        
    }
    
    @State var currentPlaying : Music =  Music(id: "", name: "Stayin Alive", artist: "Bee Gees", image: "https://i.scdn.co/image/ab67616d0000b273e39f29035ee5c2bf71e9cfb7", file: "hahaha")
    
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .scale(1.3)
                    .foregroundColor(.red.opacity(0.95))
                    .frame(width: 800, height: 450)
                    .padding(.bottom, 900)
                Text("RCP APP")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 510)
                    .foregroundColor(.white)
                
                VStack{
                    if isPlaying == true {
                        AsyncImage(url: URL(string: currentPlaying.image)){ image in
                            image
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                                .rotationEffect(.degrees(rotation))
                                .padding(.top, 530)
                                .onAppear {
                                }
                                .onTapGesture {
                                    isPlaying = false
                                    player.pause()
                                }
                        }
                    placeholder: {
                        
                    }
                        
                        Text("\(currentPlaying.name)")
                            .fontWeight(.semibold)
                        
                        Text("\(currentPlaying.artist)")
                            .fontWeight(.regular)
                        
                    }else {
                        AsyncImage(url: URL(string: currentPlaying.image)){ image in
                            image
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                                .blur(radius: 2)
                                .padding(.top, 530)
                            
                                .onTapGesture {
                                    isPlaying = true
                                    playSound(key: currentPlaying.file)
                                    vibrar()
                                    Timer.scheduledTimer(withTimeInterval: 1.66, repeats: true){ _ in
                                        vibrar()
                                    }
                                    
                                }
                        }
                    placeholder: {
                        
                    }
                        
                        Text("\(currentPlaying.name)")
                            .fontWeight(.semibold)
                        
                        Text("\(currentPlaying.artist)")
                            .fontWeight(.regular)
                        
                    }
                    //                    Spacer()
                    //                        .frame(height: 10)
                    ScrollView {
                        VStack{
                            ForEach(viewModel.music, id: \.name){ musica in
                                VStack{
                                    HStack{
                                        AsyncImage(url: URL(string: musica.image)){ image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                            
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 120, alignment: .leading).clipShape(Circle())
                                        .onTapGesture {
                                            currentPlaying = musica
                                            isPlaying = true
                                            isRotating = true
                                            playSound(key: currentPlaying.file)
                                            vibrar()
                                            Timer.scheduledTimer(withTimeInterval: 1.66, repeats: true){ _ in
                                                vibrar()
                                            }
                                        }
                                        VStack{
                                            Text(musica.name).font(.title2).fontWeight(.semibold)
                                                .frame(width: 200, alignment: .leading)
                                            Text(musica.artist).font(.subheadline)
                                                .frame(width: 200, alignment: .leading)
                                        }
                                    }
                                }
                            }
                        }.padding(.trailing)
                        Spacer()
                    }
                    
                    
                    
                }
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
