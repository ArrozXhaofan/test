//
//  modificadores1.swift
//  Curso1
//
//  Created by Jean L2 on 12/07/23.
//

import SwiftUI

struct NewBottonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
    }
}

extension View {
    func newButtonModifier() -> some View {
        self.modifier(NewBottonModifier())
    }
}

struct modificadores1: View {
    var body: some View {
        
        VStack {
            
            Text("Suscribete a SwiftBeta")
                .bold()
                .padding()
            
            Button("Ok") {
                print("Haz presionado el boton")
            }
            
            .newButtonModifier()
            
        }
        
    }
}

struct modificadores1_Previews: PreviewProvider {
    static var previews: some View {
        modificadores1()
    }
}
