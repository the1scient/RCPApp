//
//  PerfilView.swift
//  RCPapp
//
//  Created by Student13 on 25/09/23.
//

import SwiftUI

struct PerfilView: View {
        
    @AppStorage("NOME_PESSOA") var nomePessoa : String = ""
    @AppStorage("PROFISSAO_PESSOA") var profissaoPessoa : String = ""
    
    
    var body: some View {
        VStack{
            Text("RCPApp")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            Image(systemName: "heart.fill").foregroundColor(.red)
                .font(.system(size: 30))
            Spacer()
            VStack{
                Image(systemName: "person.fill")
                    .font(.system(size: 130))
                Text("Bem vindo(a) \(nomePessoa)")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                Divider()
                    .frame(width: 300, height: 2)
                    .background(Color.black)
                    .padding(.horizontal)
                    .padding(.bottom, 60)
            }
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
            .padding([.leading, .top])
            Spacer()
            
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
