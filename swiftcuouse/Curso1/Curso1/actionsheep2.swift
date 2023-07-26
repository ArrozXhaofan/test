//
//  actionsheep2.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct actionsheep2: View {
    
    @State var moneda: String = "ds"
    @State var isOn: Bool = false
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                
                isOn = true
                
            }, label: {
                VStack {
                    Image(systemName: "dollarsign.square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                    
                    Text(moneda)
                        .bold()
                        .font(.title)
                }
            })
            
        }.actionSheet(isPresented: $isOn , content: {
            ActionSheet(title: Text("Selecciona un tipo de moneda"),
                        buttons: [
                            .default(Text("Soles"),action: {moneda="Soles"}),
                            .default(Text("Dolares"),action: {moneda="Dolares"}),
                            .destructive(Text(moneda))
                        ]
            )
        } )
    }
}

struct actionsheep2_Previews: PreviewProvider {
    static var previews: some View {
        actionsheep2()
    }
}
