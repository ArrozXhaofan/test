//
//  modificadores2.swift
//  Curso1
//
//  Created by Jean L2 on 12/07/23.
//

import SwiftUI

struct Modelo3: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .bold()
            .foregroundColor(.red)
    }
}

extension View {
    func componente2() -> some View {
        self.modifier(Modelo3())
    }
}

struct modificadores2: View {
    var body: some View {
        
        VStack {
            
            Text("Esto es un texto")
                .padding()
            
            Button("Hola") {
                print("Presioname")
            }
        }
        
    }
}

struct modificadores2_Previews: PreviewProvider {
    static var previews: some View {
        modificadores2()
    }
}
