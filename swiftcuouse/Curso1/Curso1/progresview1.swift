//
//  progresview1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct progresview1: View {
    
    @State var progress: Float = 0.0
    
    var body: some View {
        
        VStack {
        
            ProgressView(value: progress )
            
            Button("Cargando") {
              
                progress += 0.1
                
            }.padding(.top, 40)
                
        }.padding(.horizontal, 50)
        
        
    }
}

struct progresview1_Previews: PreviewProvider {
    static var previews: some View {
        progresview1()
    }
}
