//
//  asyncimage1.swift
//  Curso1
//
//  Created by Jean L2 on 10/07/23.
//

import SwiftUI

struct asyncimage1: View {
    
    private let url = URL(string: "https://fastly.picsum.photos/id/1055/536/354.jpg?hmac=Hn5PGfnC-Vl2rw83fls2cbf4Erp2tKUF1vJFW9xkU5w")
    
    var body: some View {
        
        
        AsyncImage(url: url!, content: {
            
            image in
            image
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
            
        }, placeholder: {
            ProgressView()
        })
    }
}

struct asyncimage1_Previews: PreviewProvider {
    static var previews: some View {
        asyncimage1()
    }
}
