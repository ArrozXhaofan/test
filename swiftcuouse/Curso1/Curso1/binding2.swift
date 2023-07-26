//
//  binding2.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct binding2: View {
    
    @State var musica: Int = 0

    var body: some View {
    
        
    Holasoy(uno: $musica)
        
    
    }
}

struct Holasoy: View {
    
    @Binding var uno: Int
    
    var body: some View {
        
        VStack {
          
            Text("\(uno)")
                .bold()
                .font(.largeTitle)
            
            Button("+1") {
                uno += 1
            }.padding(.top,10)
            
        }.padding(.horizontal, 50)
        
    }
    
}


struct binding2_Previews: PreviewProvider {
    static var previews: some View {
        binding2()
    }
}
