//
//  alert1.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct alert1: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
       
        VStack {
            Text("Suscribete a SwiftBeta")
                .padding()
            Button("Aceptar") {
                isOn = true
            }
        }.alert(isPresented: $isOn , content: {
            Alert(title:Text("Noo mno") , message: Text("Ella de verdad te ama?") , primaryButton: .default(Text("No se ptm :/"), action: {
                print("Button tapped")
                
            }), secondaryButton: .destructive(Text("No wn :(")))
        } )
        
        
    }
}

struct alert1_Previews: PreviewProvider {
    static var previews: some View {
        alert1()
    }
}
