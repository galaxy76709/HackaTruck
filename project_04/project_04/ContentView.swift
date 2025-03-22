//
//  ContentView.swift
//  project_04
//
//  Created by Turma02-17 on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false // lembrar de declarar a variavel
    @State private var value             : Int = 0  // ao lado em cima do body
    @State private var second_time       : Int = 0  // ao lado em cima do body
    @State private var result            : Int = 0
    @State private var color_fundo       : Color = Color(.none)
    

    

  
    var gradiente = Gradient(colors: [Color("none"), Color("first_color")])
// funcao para verificar se o resultado passou do escopo

    
    var body: some View {
        let result = value + second_time

        ZStack{
            color_fundo
            .ignoresSafeArea()
            //Image("")
            //    .resizable()
            // .frame(width: 200, height: 200)
            //  .padding()
            VStack{
                VStack{
                    HStack{
                        TextField("entre com algum valor", value: $value, format: .number)
                            .keyboardType(.decimalPad)
                            .textContentType(.oneTimeCode)
                            .padding(   )
//                            .background(Color.black)
                            .cornerRadius(10)
                        
                    }
                }
                    
                    VStack{
                        Text("Digite algo")
                            .font(.system(size: 20))
                            .padding()
                        HStack{
                            
                            TextField("Hello...?",  value: $second_time, format: .number)
                                .keyboardType(.decimalPad)
                                .textContentType(.oneTimeCode)
                                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            
                        }
                        
                        VStack{
                            Text("Sua media foi: \(result)")
                                .font(.system(size: 20))
                                .padding()
                                .frame (width:200)
                                .keyboardType(.decimalPad)
                                .textContentType(.oneTimeCode)
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .background(Color.none)
                        }
                        HStack{
                            Button("mostrat alerta ou algo do genero") {
                                if (result <= 1 || result >= 9 ){
                                    
                                }
                                
                                
                            }
                            
                            .alert(isPresented: $showingAlert) {
                                Alert(title: Text("to tentando"), message: Text("bla bla bla"), dismissButton: .default(Text("pegado isso")))
                            }
                        }
                    }
                    Spacer()
                    
                    
                    if (result == 0){
                        VStack {
                            
                            Image("Image")
                                .frame(width: 200, height: 200)
                                .scaledToFit()
                                .clipShape(Circle())
                        }
                    }
                    
                    if (result == 1){
                        Color("first_color")
                        Image("Image")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .scaledToFit()
                            .clipShape(Circle())
                        
                    }
                    
                    if (result == 2){
                        Image("Image")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .scaledToFit()
                            .clipShape(Circle())
                        
                    }
                    if (result == 3){
                        Image("Image")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .scaledToFit()
                            .clipShape(Circle())
                        
                    }
                    
                    if (result == 4){
                        Image("Image")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .scaledToFit()
                            .clipShape(Circle())
                        
                    }
                    
                    
                    if (result == 5){
                        Image("Image")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .scaledToFit()
                            .clipShape(Circle())
                        
                    }
                    
                    
                    Spacer()
                    VStack{
                        HStack{
                            Text("bla bla bla bla ")
                                .multilineTextAlignment(.center)
                                .background(Color.none)
                                .background(.white)
                            
                            
                        }
                    }
                }
            }
        }
    }
#Preview {
    ContentView()
}
