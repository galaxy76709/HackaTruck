//
//  ContentView.swift
//  Desafio9
//
//  Created by Turma02-25 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var ViewModel = viewmodel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(.gray)
                
                VStack {
                    Image("harry_1")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(width: 400, height: 230)
                    
                    
                    
                    
                    ScrollView{
                        VStack{
                            ForEach(ViewModel.personagens, id: \.id ){personagem in
                                
                                NavigationLink(destination: viewsecond(personagem: personagem)){
                                    HStack{
                                        AsyncImage(url: URL(string: personagem.image!)) { image in
                                            image
                                                .resizable()
                                                .clipShape(Rectangle())
                                                .frame(width: 110, height: 110, alignment: .leading)
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        
                                        Text(personagem.name!)
                                            .foregroundColor(.white)
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                    .padding()
                                }
                            }
                            
                            
                            
                        }
                    }
                }
                .onAppear(){
                    ViewModel.fetch()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
