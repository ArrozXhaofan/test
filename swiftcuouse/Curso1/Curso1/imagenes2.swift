//
//  imagenes2.swift
//  Curso1
//
//  Created by Jean L2 on 3/07/23.
//

import SwiftUI

struct imagenes2: View {
    var body: some View {

        Image("youtube")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .foregroundColor(.green)
            
            

    }
}

struct imagenes2_Previews: PreviewProvider {
    static var previews: some View {
        imagenes2()
    }
}
