//
//  botones2.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct botones2: View {
    var body: some View {
        
    
        VStack {
            
            Button(action: {
                print("Hola 1")
                
            }, label: {
                
                Text("Suscribete".uppercased())
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
        })
            
            Button(action: {
                
                print("This is a new text")
                
            }, label: {
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 20)
                    .overlay(Image(systemName: "rectangle.portrait.and.arrow.right")
                        .foregroundColor(.white)
                        .font(.system(size: 50, weight: .bold))
                    )
                    
                
            })
            
        }
        
        
    }
}

struct botones2_Previews: PreviewProvider {
    static var previews: some View {
        botones2()
    }
}
