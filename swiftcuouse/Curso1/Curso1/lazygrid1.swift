//
//  lazygrid1.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct lazygrid1: View {
    
    var elements = 1...500
    let gridItems = [GridItem(.fixed(100)),
                     GridItem(.fixed(100)),
                     GridItem(.fixed(100))]
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems , content: {
                
                ForEach(elements, id: \.self) {
                    
                    elements in
                    
                    VStack {
                        Circle()
                            .frame(height: 40)
                        Text("\(elements)")
                    }
                }
            })
        }
        
        
        
    }
}

struct lazygrid1_Previews: PreviewProvider {
    static var previews: some View {
        lazygrid1()
    }
}
