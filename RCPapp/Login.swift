//
//  Login.swift
//  RCPapp
//
//  Created by Student22 on 22/09/23.
//

import SwiftUI

struct Login: View {
    
    @State var nome: String = ""
    @State var Idade: String = ""
    @State var Profissao: String = ""
    @State var telaLogin = false
    
    
    var body: some View {
        
        
        ZStack{
            Color.white
            
            Circle()
                .scale(1.3)
                .foregroundColor(.red.opacity(0.95))
                .frame(width: 800, height: 510)
                .padding(.bottom, 900)
            
            
            
            Text("RCP APP")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 510)
                .foregroundColor(.white)
            
            Text("Perfil do Usuário")
                .font(.body)
                .bold()
                .padding(.bottom, 205)
                .foregroundColor(.red)
            
            VStack {
                TextField("Informe seu Nome Completo", text: $nome)
                    .padding()
                    .frame(width: 350, height: 40)
                    .background(Color.gray.opacity(0.20))
                    .cornerRadius(10)
                    .border(.red.opacity(0.1))
                    .padding(.top, 250)
                    .padding(.bottom, 10)
                
                TextField ("Idade", text: $Idade)
                    .padding()
                    .frame(width: 120, height: 40)
                    .background(Color.gray.opacity(0.20))
                    .cornerRadius(10)
                    .border(.red.opacity(0.1))
                    .padding(.bottom, 10)
                
                TextField ("Profissão", text: $Profissao)
                
                    .padding()
                    .frame(width: 350, height: 40)
                    .background(Color.gray.opacity(0.20))
                    .cornerRadius(10)
                    .border(.red.opacity(0.1))
                    .padding(.bottom, 10)
                
                Button("Salvar Perfil") {
                    
                    
                } .foregroundColor(.black)
                    .frame(width: 300, height: 50)
                    .background(Color.red.opacity(0.95))
                    .cornerRadius(10)
                    .border(.blue.opacity(0.2))
                
                    
                
                
                Divider()
                    .frame(width: 300, height: 2)
                    .overlay(.black)
                    
                
            }
            
        }
        
        
        .ignoresSafeArea()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

