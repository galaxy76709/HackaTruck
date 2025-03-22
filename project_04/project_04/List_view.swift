//
//  secondview.swift
//  project_04
//
//  Created by Turma02-17 on 21/03/25.
//

import SwiftUI

struct List_view: View {
    
    var body: some View {
        

        NavigationStack{
            List{
                NavigationLink(destination: secondview()){
                    Text("rosa")
                    Image(systemName: "paintbrush")}
                
                NavigationLink(destination: three_view()){
                    Text("azul")
                    Image(systemName: "paintbrush.pointed")}
                
                NavigationLink(destination: four_view()){
                    Text("cinza")
                    Image(systemName: "paintpalette")}
                   
                    }
                }
            }
        }
#Preview {
    secondview()
}
