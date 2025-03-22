//
//  secondview.swift
//  project_04
//
//  Created by Turma02-17 on 21/03/25.
//

import SwiftUI

struct three_view: View {
    var body: some View {
        
        ZStack{
            Color(.systemBlue)
                .edgesIgnoringSafeArea(.top)
            ZStack{
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(.black)
                Image(systemName: "paintbrush.pointed")
                    .foregroundColor(.white)
                    . font(.system(size: 132))
                
            }
        }
    }
}

#Preview {
    secondview()
}
