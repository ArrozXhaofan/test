//
//  contextmenu2.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct contextmenu2: View {
    
    @State var moneda: String = "Seleccione"
    
    var body: some View {
        
        Label(moneda , systemImage: "iphone")
            .contextMenu(ContextMenu(menuItems: {
                Button("Soles"){
                    moneda = "Soles"
                    print("Soles")
                }
                
                Button("Dolares") {
                    moneda = "Dolares"
                    print("Dolares")
                }
            }))
        
    }
}

struct contextmenu2_Previews: PreviewProvider {
    static var previews: some View {
        contextmenu2()
    }
}
