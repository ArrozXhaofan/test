//
//  toggle1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct toggle1: View {
    
    @State var isOn:Bool = false
    
    var body: some View {
        
        VStack {
            Form {
                
                Toggle("Like?", isOn: $isOn)
                
                Text("\(isOn.description)" )
            }
            
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(isOn ? .green : .red )
                .cornerRadius(isOn ? 50 : 10)
        }
       
        
        
        
    }
}

struct toggle1_Previews: PreviewProvider {
    static var previews: some View {
        toggle1()
    }
}
