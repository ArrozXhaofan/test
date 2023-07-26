//
//  toggle2.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct toggle2: View {
    
    @State var isOn:Bool = false
    @State var text:String = ""
    
    var body: some View {
        
        Form {
            Section {
                Toggle("Desactivar", isOn: $isOn)
                
                if isOn {
                    Text("Tu toggle está encendido")
                }
                else {
                    Text("Tu toggle esta desactivado")
                }
                
            }
            Section {

                    Text(text)
            }
        }

        
    }
}

struct toggle2_Previews: PreviewProvider {
    static var previews: some View {
        toggle2()
    }
}
