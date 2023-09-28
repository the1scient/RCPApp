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
        "Procurar Ajuda Médica: Leve a pessoa para avaliação médica imediatamente.",
        "Monitoramento Constante: Observe os sinais vitais, como batimentos cardíacos e respiração.",
        "Posição de Recuperação: Se estiver consciente e respirando, coloque em posição lateral para segurança.",
        "Fique Atento a Mudanças: Comunique qualquer mudança significativa a um profissional de saúde."
    ]
    let  titulo = ["A reanimação cardiopulmonar (RCP) é uma resposta sequencial organizada à parada cardíaca, incluindo:",
                   "Reconhecimento de ausência de respiração e circulação",
                   "Suporte vital básico com compressões torácicas e respiração de resgate",
                   "Suporte vital cardíaco avançado (SACV) com controle definitivo das vias respiratórias e do ritmo"
                   
    ]
    
    var body: some View {
        ScrollView{
            
            
            VStack{
                ForEach(titulo, id: \.self){
                    texto in
                    Text(texto)
                }
                
                AsyncImage(url:URL(string: "https://cmosdrake.com.br/content/uploads/2019/11/RCP-reanima%C3%A7%C3%A3o-cardiopulmonar-1024x681.jpg")) { p in
                    
                    p
                        .resizable()
                        .frame(width:200, height: 200)
                    
                } placeholder: {
                    ProgressView()
                }
                
                Text("Cuidados pós-reanimação").bold()
                Spacer()
                
                ForEach(items, id: \.self) { item in
                    Spacer()
                    Text(item)
                    
                        .multilineTextAlignment(.center)
                    
                }
                Spacer()
                AsyncImage(url:URL(string: "https://i0.wp.com/enfermagemilustrada.com/wp-content/uploads/2018/08/Ressuscita%C3%A7%C3%A3o-Cardiopulmonar.png?resize=640%2C802&ssl=1")){ p in
                    
                    p
                        .resizable()
                        .frame(width:350, height: 500)
                    
                    
                } placeholder: {
                    ProgressView()
                    Spacer()
                }
                Button("Referencias") {
                    if let url = URL(string: "https://cmosdrake.com.br/blog/o-que-voce-precisa-saber-sobre-rcp-ressuscitacao-cardiopulmonar/") {
                        UIApplication.shared.open(url)
                    }
                }.background(.blue)
                    .foregroundColor(.white).frame(width: 500)
            }
            
            
            
        }
    }
    
    struct InfoView_Previews: PreviewProvider {
        static var previews: some View {
            InfoView()
        }
    }
    
}

