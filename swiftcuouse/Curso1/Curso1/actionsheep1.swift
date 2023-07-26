//
//  actionsheep1.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct actionsheep1: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("This is a new text")
                .padding()
            
            Button("Seleccionar region") {
                isOn = true
            }
        }.actionSheet(isPresented: $isOn, content: {
            
            ActionSheet(title: Text("Elije una opcion"),
                        message: Text("Soles o dolares pa"),
                        buttons: [.default(Text("Soles"),
                                           action: {print("Soles pa")}),
                                  .default(Text("Dolares"), action: {
                                      print("Dolares mrd que xuxa pasa")
                                  }),
                                  .destructive(Text("Cancelar"),action: {
                                      print("Porque xuxa cancelas")
                                  })
                        ]
            )
            
            
        })
        /* -----------------*/
    }
}

struct actionsheep1_Previews: PreviewProvider {
    static var previews: some View {
        actionsheep1()
    }
}
