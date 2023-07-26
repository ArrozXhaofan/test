//
//  dragesture2.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct dragesture2: View {
    
    @State var lotu: CGSize = .zero
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .foregroundColor(.cyan)
            .offset(x: lotu.width, y: lotu.height )
            
            .gesture(DragGesture()
                        .onChanged({ values in
                            lotu = values.translation
                            })
                            .onEnded({ value in
                                withAnimation(.spring()){
                                    lotu = .zero
                                }
                            })
                    )
        
    }
}

struct dragesture2_Previews: PreviewProvider {
    static var previews: some View {
        dragesture2()
    }
}
