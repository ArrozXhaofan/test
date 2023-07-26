//
//  MyTest.swift
//  Swift UI tutorial
//
//  Created by Jean L2 on 20/06/23.
//

import SwiftUI

struct MyTest: View {
    var body: some View {
        
        VStack {
            
            Image("foto")
                .resizable()
                .frame(width: 140, height: 150)
            
            Text("Names")
                .padding()
                .font(.title)
            
            Spacer()
            
        }
        
        
    }
}

struct MyTest_Previews: PreviewProvider {
    static var previews: some View {
        MyTest()
    }
}
