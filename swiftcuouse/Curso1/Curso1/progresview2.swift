//
//  progresview2.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct progresview2: View {
    
    @State var progreso: Float = 0.45
    
    var body: some View {
        
        
        VStack {
            ProgressView(
                "Cargando...", value: progreso)
        }.padding(.horizontal, 50)
    }
}

struct progresview2_Previews: PreviewProvider {
    static var previews: some View {
        progresview2()
    }
}
