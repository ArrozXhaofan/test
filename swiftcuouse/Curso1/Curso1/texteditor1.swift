//
//  texteditor1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct texteditor1: View {
    
    @State var text = "Escribe algo..."
    @State var counter = 0
    
    var body: some View {
        
        VStack {
            TextEditor(text:  $text)
                .font(.title)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(.blue)
                .padding()
                .onChange(of: text, perform: {
                    value  in counter = value.count
                })
            
            Text("\(counter)")
                .foregroundColor(counter <= 50 ? .green : .red )
                .font(.largeTitle)
        }
    }
}

struct texteditor1_Previews: PreviewProvider {
    static var previews: some View {
        texteditor1()
    }
}
