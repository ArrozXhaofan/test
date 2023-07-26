//
//  alert2.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct alert2: View {
    
    @State var isState: Bool = false
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                
                isState = true
                
            }, label: {
                VStack {
                    Image(systemName: "square.and.arrow.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .padding(.bottom, 10)
                    
                    Text("Send")
                        .bold()
                        .font(.title)
                }
                .padding()
                .border(.blue)
                .cornerRadius(10)
            })
            
        }.alert(isPresented: $isState , content: {Alert(title: Text("Notificacion") ,message: Text("¿Estas seguro que quieres descargar?") , primaryButton: .default(Text("Descargar"), action: {
            print("El chico acepto")
        }) , secondaryButton: .destructive(Text("Cancelar"), action: {
            print("El chico NO acepto")
        } ))}  )
        
    }
}

struct alert2_Previews: PreviewProvider {
    static var previews: some View {
        alert2()
    }
}
