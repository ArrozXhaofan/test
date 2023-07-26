//
//  slidders1.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct slidders1: View {
    
    @State var iPhoneCounter: Float = 0.0
    @State var isEditing: Bool = false
    
    var body: some View {
       
        Form {
            Slider(
                value: $iPhoneCounter,
                in: 0...10,
                step: 1,
                onEditingChanged: {(editing) in  isEditing = editing},
                minimumValueLabel: Text("min"),
                maximumValueLabel: Text("max")) {
                    Text("Selecciona numero de iphones")
                }
            
            Text("\(iPhoneCounter)")
                .foregroundColor(isEditing ? .green : .red)
        }
        
        
        
    }
}

struct slidders1_Previews: PreviewProvider {
    static var previews: some View {
        slidders1()
    }
}
