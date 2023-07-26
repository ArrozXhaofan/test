//
//  texteditor2.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct texteditor2: View {
    
    @State var text = "Write something..."
    @State var counter = 0
    
    var body: some View {
        
        
        VStack {
            
            TextEditor(text: $text )
                .font(.title)
            .foregroundColor(.blue)
            .onChange(of: text, perform: {
                value in counter = text.count
            })
            
            Text("\(counter)")
                .font(.largeTitle)
                .foregroundColor(
                    counter < 50 ? .green : .red )
        }
        
    }
}

struct texteditor2_Previews: PreviewProvider {
    static var previews: some View {
        texteditor2()
    }
}
