//
//  PerfilView.swift
//  RCPapp
//
//  Created by Student13 on 25/09/23.
//

import SwiftUI

struct PerfilView: View {
    
    @State var nomePessoa: String = ""
    @State var profissaoPessoa: String = ""
    
    var body: some View {
        VStack{
            Text("RCPApp")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            Image(systemName: "heart.fill").foregroundColor(.red)
                .font(.system(size: 30))
            Spacer()
            VStack{
                Image(systemName: "person.fill")
                    .font(.system(size: 200))
                Text("Bem vindo(a) \(nomePessoa)")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
            }
            Spacer()
            VStack{
                HStack{
                    Text("Nome: ")
                    TextField("Insira seu nome ", text: $nomePessoa)
                }
                HStack{
                    Text("Profissão: ")
                    TextField("Insira sua profissão ", text: $profissaoPessoa)
                }
            }
            .font(.system(size: 20, weight: .bold))
            .padding(.leading)
            Spacer()
            
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
