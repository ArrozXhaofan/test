//
//  View30.swift
//  enviromentobjetc
//
//  Created by Jean L2 on 8/07/23.
//

import SwiftUI

struct View30: View {
    
    @EnvironmentObject var v3 : LaClase
    
    var body: some View {
        
        
        VStack {
            Text("Vista 30")
                .padding()
            
            Button("Sumar", action: {
                v3.contador += 2
            })
        }
        
        
        
        
    }
}

struct View30_Previews: PreviewProvider {
    static var previews: some View {
        View30()
    }
}
