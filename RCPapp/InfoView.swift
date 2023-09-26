//
//  InfoView.swift
//  RCPapp
//
//  Created by Student14 on 26/09/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                        Text("A reanimação cardiopulmonar (RCP) é uma resposta sequencial organizada à parada cardíaca, incluindo: \n Reconhecimento de ausência de respiração e circulação \n Suporte vital básico com compressões torácicas e respiração de resgate \n Suporte vital cardíaco avançado (SACV) com controle definitivo das vias respiratórias e do ritmo")
                    
                    
 
                    
                    Text("Cuidados pós-reanimação").bold()
                    
                    HStack{
                        Text("Início imediato da compressão torácica e desfibrilação precoce (quando indicada) são as chaves para o sucesso. \n Velocidade, eficiência e aplicação adequada de RCP com o mínimo possível de interrupções determinam o sucesso do resultado; a rara exceção é a hipotermia profunda causada por imersão em água gelada, na qual a reanimação pode ser realizada com sucesso mesmo após uma parada prolongada (até 60 minutos).")
                        Spacer()
                    }

                    
                    Text("Visão geral da RCP ").bold()
                    
                    HStack{
                        Text("São seguidas as diretrizes da American Heart Association para profissionais de saúde (ver figura Cuidado cardíaco emergencial abrangente para adultos ). Se uma pessoa desmaiou com possível parada cardíaca, o socorrista primeiro estabelece a não responsividade e confirma a ausência de respiração ou a presença somente de respiração ofegante. Então, o socorrista chama ajuda. Quem responder ao chamado é instruído a ativar o sistema de resposta de emergência (ou pessoal adequado de reanimação hospitalar) e, se possível, obter um desfibrilador. O suporte vital básico deve ser iniciado imediatamente. \n Se ninguém responder ao pedido de ajuda, primeiro o socorrista ativa o sistema de resposta de emergência e então inicia o suporte vital básico efetuando 30 compressões torácicas à frequência de 100 a 120/min e em uma profundidade de 5 a 6 cm, deixando que a parede torácica retorne à altura máxima entre as compressões e então abrindo a via respiratória (elevando o queixo e inclinando a testa para trás) e fazendo 2 respirações boca a boca. O ciclo de compressões e respirações é continuado (ver tabela Técnicas de RCP para profissionais de saúde ) sem interrupção; preferivelmente, cada socorrista descansa a cada 2 minutos. É crucial que mesmo transeuntes não treinados comecem e mantenham as compressões torácicas contínuas até a chegada de socorro especializado. Portanto, muitas operadoras de serviço de resposta a emergências agora dão instruções ao autor da chamada antes da chegada, incluindo instruções por telefone sobre RCP utilizando apenas compressões. \n Quando um desfibrilador (manual ou automático) é disponibilizado, a pessoa com fibrilação ventricular (FV) ou taquicardia ventricular (TV) sem pulso recebe um choque não sincronizado (Ver também Desfibrilação). Se a parada cardíaca é testemunhada e há um desfibrilador no local, a pessoa em FV ou TV deve ser imediatamente desfibrilada, com as compressões retomadas imediatamente após o choque ser aplicado; a desfibrilação precoce pode converter imediatamente a FV ou TV sem pulso em um ritmo de perfusão. Se o ritmo inicial é a atividade elétrica sem pulso ou assistolia, deve-se administrar uma dose inicial de 1 mg de adrenalina IV/IO (intravenosa/intraóssea) o mais rápido possível após o reconhecimento da parada cardíaca.    Referencia : https://www.msdmanuals.com/pt-br/profissional/medicina-de-cuidados-cr%C3%ADticos/parada-card%C3%ADaca-e-rcp/reanima%C3%A7%C3%A3o-cardiopulmonar-rcp-em-adultos")
                        Spacer()
                    }
                    

                    
                    ScrollView(.horizontal){
                        HStack{
                            AsyncImage(url:URL(string: "https://cmosdrake.com.br/content/uploads/2019/11/RCP-reanima%C3%A7%C3%A3o-cardiopulmonar-1024x681.jpg")) { p in
                                
                                p
                                    .resizable()
                                    .frame(width:300, height: 300)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            AsyncImage(url:URL(string: "https://img.freepik.com/fotos-premium/mulher-realizando-rcp-em-boneca-de-treinamento-de-bebe-com-compressao-de-uma-mao-treinamento-de-primeiros-socorros-ressuscitacao-cardiopulmonar-curso-de-primeiros-socorros-em-manequim-de-rcp_1212-7132.jpg?w=2000")) { p in
                                
                                p
                                    .resizable()
                                    .frame(width:300, height: 300)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            AsyncImage(url:URL(string: "https://assets.aboutkidshealth.ca/akhassets/IMD_CPR_child_chest_compressions_EN.jpg?RenditionID=10")) { p in
                                
                                p
                                    .resizable()
                                    .frame(width:300, height: 300)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            
                        }
                    }
                }
            }
            .background(.yellow.opacity(0.19))
          
        }
            
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
