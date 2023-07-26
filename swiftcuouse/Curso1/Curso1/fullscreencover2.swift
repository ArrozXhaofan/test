//
//  fullscreencover2.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct fullscreencover2: View {
    
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
                        .frame(height: 150)
                        .padding(.bottom, 3)
                    Text("Download")
                        .bold()
                        .font(.title)
                }
            })
        }.sheet(isPresented: $isState, onDismiss: {isState = false}  , content: {
            
            VStack {
                Text("This is a text")
                Button("Link me", action: {
                    isState = false
                })
                
            }
        })
        
    }
}

struct fullscreencover2_Previews: PreviewProvider {
    static var previews: some View {
        fullscreencover2()
    }
}
