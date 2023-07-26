//
//  botones1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct botones1: View {
    var body: some View {
        
        
        VStack {
            Button(action: {
                print("Hola como estas")
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
            
            
            Button(action:{
                print("Dale a like")
            } , label: {
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(Image(systemName:"hand.thumbsup.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 70, weight: .bold))
                    )
            })
            
        }
        
        
        
        
    }
}

struct botones1_Previews: PreviewProvider {
    static var previews: some View {
        botones1()
    }
}
