 //
//  SwiftUIView.swift
//  project_04
//
//  Created by Turma02-17 on 21/03/25.
//

import SwiftUI

struct SwiftUIView: View {
    
    var body: some View {
        VStack{
            VStack{
            HStack{
                TabView{
                    secondview()
                        .tabItem {
                            Image(systemName: "paintbrush.fill")
                            Text("Rosio")
                                .font(.system(size: 400))
                        }
                    three_view()
                        .tabItem {
                            Image(systemName: "paintbrush.pointed" )
                            Text("azul")
                                .font(.system(size: 400))
                        }
                    four_view()
                        .tabItem {
                            Image(systemName: "paintpalette.fill" )
                            Text("cinza")
                                  .font(.system(size: 400))
                                
                        }
                    
                    List_view()
                        .tabItem {
                            Image(systemName: "list.dash" )
                            Text("lista")
                                  .font(.system(size: 400))
                                
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
