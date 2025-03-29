    //
    //  ContentView.swift
    //  Desafio9
    //
    //  Created by Turma02-25 on 26/03/25.
    //

    import SwiftUI

    struct viewsecond: View {
        
        @StateObject var viewModel = viewmodel()
        @State var personagem : HaPo?
    //    @State var personagem : Wand?

        
        var body: some View {
            NavigationStack{
                
                ZStack{
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(.gray)
                    
                    
                    
                    VStack{
                        //                    ForEach(viewModel.personagens, id: \.id ){personagem in
                        //
                        //                        NavigationLink(destination: viewsecond()){
                        VStack{
                            AsyncImage(url: URL(string: personagem!.image!)) { image in
                                image
                                    .resizable()
                                    .clipShape(Rectangle())
                                    .frame(width: 200, height: 200)
                            } placeholder: {
                                ProgressView()
                            }
                            VStack{
                                
                                Text(personagem!.name!)
                                    .foregroundColor(.white)
                                Text(personagem!.species!)
                                    .foregroundColor(.white)
                                Text(personagem!.gender!)
                                    .foregroundColor(.white)
                                Text(personagem!.house!)
                                    .foregroundColor(.white)
                                Text(personagem!.wand.core!)
                                    .foregroundColor(.blue)
                                Text(personagem!.patronus!)
                                    .foregroundColor(.white)

                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .padding()
                        }
                    }
                }
                        
    //                }
    //                
    //            }
                    
                    
                
            }.onAppear(){
                viewModel.fetch()
            }
        }
    }

    #Preview {
        viewsecond()
    }
