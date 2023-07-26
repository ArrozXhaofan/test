//
//  State1.swift
//  PropertyWrappers
//
//  Created by Jean L2 on 26/07/23.
//

import SwiftUI

struct State1: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        
        VStack {
            
            Text("\(counter)")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Button(action: {
                
                counter += 1
                
            }, label: {
                
                HStack{
                    Text("Incrementar")
                    
                    Image(systemName: "plus.viewfinder")
                }
                
            })
            .padding(10)
            .border(.blue)
            .cornerRadius(5)
            
            
            
            
            
        }
        .padding()
        
    }
}

struct State1_Previews: PreviewProvider {
    static var previews: some View {
        State1()
    }
}
