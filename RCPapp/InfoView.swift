//
//  InfoView.swift
//  RCPapp
//
//  Created by Student14 on 26/09/23.
//

import SwiftUI

struct InfoView: View {
    @State private var zoomScale: CGFloat = 1.0
    let items = [
        "* Procurar Ajuda Médica: Leve a pessoa para avaliação médica imediatamente.",
        "* Monitoramento Constante: Observe os sinais vitais, como batimentos cardíacos e respiração.",
        "* Posição de Recuperação: Se estiver consciente e respirando, coloque em posição lateral para segurança.",
        "* Fique Atento a Mudanças: Comunique qualquer mudança significativa a um profissional de saúde."
    ]
    let  titulo = ["A reanimação cardiopulmonar (RCP) é uma resposta sequencial organizada à parada cardíaca, incluindo:\n",
                   "* Reconhecimento de ausência de respiração e circulação.",
                   "* Suporte vital básico com compressões torácicas e respiração de resgate.",
                   "* Suporte vital cardíaco avançado (SACV) com controle definitivo das vias respiratórias e do ritmo."
                   
    ]
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Introdução ao RCP ")
                    .bold()
                Divider()
                    .frame(width: 300, height: 2)
                    .overlay(.red)
                    .padding(.bottom)
                ForEach(titulo, id: \.self){
                    texto in
                    Text(texto)
                }
                .frame(maxWidth: 360, alignment: .leading)
                
                AsyncImage(url:URL(string: "https://cmosdrake.com.br/content/uploads/2019/11/RCP-reanima%C3%A7%C3%A3o-cardiopulmonar-1024x681.jpg")) { p in
                    
                    p
                        .resizable()
                        .frame(width:300, height: 200)
                        .padding()
                    
                } placeholder: {
                    ProgressView()
                }
                
                Text("Cuidados pós-reanimação")
                    .bold()
                Divider()
                    .frame(width: 300, height: 2)
                    .overlay(.red)
                    .padding(.bottom)
                    Text("A partir do momento que você se submete a fazer o RCP, tem que tomar alguns cuidados sendo eles: \n")
                        .frame(maxWidth: 360, alignment: .leading)
                    ForEach(items, id: \.self) { item in
                        Text(item)
                    }
                    .frame(maxWidth: 360, alignment: .leading)
                AsyncImage(url:URL(string: "https://i0.wp.com/enfermagemilustrada.com/wp-content/uploads/2018/08/Ressuscita%C3%A7%C3%A3o-Cardiopulmonar.png?resize=640%2C802&ssl=1")){ p in
                    p.resizable()
                        .frame(width:350, height: 400)
                } placeholder: {
                    ProgressView()
                    Spacer()
                }
                Button("Saiba Mais") {
                    if let url = URL(string: "https://cmosdrake.com.br/blog/o-que-voce-precisa-saber-sobre-rcp-ressuscitacao-cardiopulmonar/") {
                        UIApplication.shared.open(url)
                    }
                }
                    .padding(.all, 10)
                    .background(.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
            
            
            
        }
    }
    
    struct InfoView_Previews: PreviewProvider {
        static var previews: some View {
            InfoView()
        }
    }
    
}

