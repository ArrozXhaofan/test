//
//  slidders2.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct slidders2: View {
    
    @State var phonesCount: Float = 0
    @State var isEditing: Bool = false
    
    
    var body: some View {
        
        Form {
            
            Slider(value: $phonesCount,
                   in: 0...100,
                   step: 5,
                   onEditingChanged: {(editing) in isEditing = editing},
                   minimumValueLabel: Text("minimo"),
                   maximumValueLabel: Text("maximo")
            ) {
                Text("Seleccioan una cantidad")
            }
            
            Text("\(phonesCount)")
                .foregroundColor( isEditing ? .blue : .red)
            
            
        }
        
        
    }
}

struct slidders2_Previews: PreviewProvider {
    static var previews: some View {
        slidders2()
    }
}
