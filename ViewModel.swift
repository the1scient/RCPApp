//
//  ViewModel.swift
//  RCPapp
//
//  Created by Student07 on 28/09/23.
//

import SwiftUI

struct Music : Decodable, Identifiable {
    var id : String
    var name: String
    var artist: String
    var image: String
    var file : String
}


class ViewModel : ObservableObject {
    
    @Published var music : [Music] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/getSongs" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Music].self, from: data)
                
                DispatchQueue.main.async {
                    self?.music = parsed
                }
            }catch{
                print(error)
            }
        }
        
        
        task.resume()
    }
    
}

