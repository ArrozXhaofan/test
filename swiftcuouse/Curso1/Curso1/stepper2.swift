//
//  stepper2.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct stepper2: View {
    
    @State var iPhones: Int = 1
    @State var Macs: Int = 1
    
    var body: some View {
        
        Form {
            
            Stepper("iPhone \(iPhones)", value: $iPhones, in: 1...10, step: 2)
            
            
            Stepper("MacBooks \(Macs)", onIncrement: {
                Macs += 1
                print("iPhones: \(iPhones) - Macbooks: \(Macs)")
            }, onDecrement: {
                Macs -= 1
                print("iPhones: \(iPhones) - Macbooks: \(Macs)")
            }
            )
        }
        
    }
}

struct stepper2_Previews: PreviewProvider {
    static var previews: some View {
        stepper2()
    }
}
