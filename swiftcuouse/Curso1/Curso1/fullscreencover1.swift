//
//  fullscreencover1.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct fullscreencover1: View {
    
    @State var isPresent: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("View 1")
                .padding()
            
            Button("Ok") {
                isPresent = true
            }
        }.sheet(isPresented: $isPresent, onDismiss: {isPresent = false} , content: {
            
            ZStack {
                Color.red.ignoresSafeArea()
                Button("Bienvenido a Swfit Beta ") {
                    isPresent = false
                }
            }
        })
        
    }
}

struct fullscreencover1_Previews: PreviewProvider {
    static var previews: some View {
        fullscreencover1()
    }
}
