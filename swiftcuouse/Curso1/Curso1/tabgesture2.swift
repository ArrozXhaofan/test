//
//  tabgesture2.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct tabgesture2: View {
    
    @State var state: String = "-"
    
    var body: some View {
        
        VStack {
            Label("Tap me 3 times", systemImage: "hand.tap")
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .border(.blue)
                .background(Color.blue)
                .cornerRadius(10)
            
                .onTapGesture(count: 3) {
                    state = "Im ready"
                }
            Spacer()
            
            Text(state)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
            
        }
        
    }
}

struct tabgesture2_Previews: PreviewProvider {
    static var previews: some View {
        tabgesture2()
    }
}
