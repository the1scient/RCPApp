//
//  Login.swift
//  RCPapp
//
//  Created by Student22 on 22/09/23.
//

import SwiftUI

struct LoginView: View {
    
    @AppStorage("NOME_PESSOA") var nome : String = ""
    @AppStorage("PROFISSAO_PESSOA") var Profissao : String = ""
    @State var logado = false
    
    @State var telaLogin = false
    
    
    var body: some View {
        
        NavigationStack{
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
                    if !logado {
                        TextField("Informe seu Nome Completo", text: $nome)
                            .padding()
                            .frame(width: 350, height: 40)
                            .background(Color.gray.opacity(0.20))
                            .cornerRadius(10)
                            .border(.red.opacity(0.1))
                            .padding(.top, 250)
                            .padding(.bottom, 10)
                        TextField ("Profissão", text: $Profissao)
                        
                            .padding()
                            .frame(width: 350, height: 40)
                            .background(Color.gray.opacity(0.20))
                            .cornerRadius(10)
                            .border(.red.opacity(0.1))
                            .padding(.bottom, 10)
                        if nome != "" && Profissao != ""{
                            Button("Salvar Perfil"){
                                logado.toggle()
                            }
                            .foregroundColor(.black)
                            .frame(width: 300, height: 50)
                            .background(Color.red.opacity(0.95))
                            .cornerRadius(10)
                            .border(.blue.opacity(0.2))
                            .padding(.top, 50)
                        } else {
                            Button("Salvar Perfil"){
                                
                            }
                            .foregroundColor(.black)
                            .frame(width: 300, height: 50)
                            .background(Color.gray.opacity(0.65))
                            .cornerRadius(10)
                            .border(.blue.opacity(0.2))
                            .padding(.top, 50)
                        }
                    } else {
                        Text("Bem Vindo(a) \(nome)")
                            .font(.title)
                            .bold()
                            .padding(.top, 350)
                        
                        Text("Profissão: \(Profissao)")
                            .padding(.top, 5)
                            .padding(.bottom, 200)
                            Button("Editar Perfil"){
                                logado.toggle()
                            }
                            .foregroundColor(.black)
                            .frame(width: 300, height: 50)
                            .background(Color.red.opacity(0.95))
                            .cornerRadius(10)
                            .border(.blue.opacity(0.2))
                        }
                    }
                    
                    Divider()
                        .frame(width: 300, height: 2)
                        .overlay(.black)
                    
                    
                }
                
            }
            
            
            .ignoresSafeArea()
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

