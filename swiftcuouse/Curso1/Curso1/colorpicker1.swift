//
//  colorpicker1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct colorpicker1: View {
    
    @State var color: Color = .blue
    
    var body: some View {
        
        VStack {
            ColorPicker("Selecciona un color", selection: $color)
            
            Spacer()
            
            Rectangle()
                .frame(width: 150, height: 150)
                .cornerRadius(25)
                .foregroundColor(color)
            
        }.padding(60)
    }
}

struct colorpicker1_Previews: PreviewProvider {
    static var previews: some View {
        colorpicker1()
    }
}
