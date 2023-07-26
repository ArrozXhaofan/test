//
//  geometryreader2.swift
//  Curso1
//
//  Created by Jean L2 on 10/07/23.
//

import SwiftUI

struct geometryreader2: View {
    var body: some View {
        
        GeometryReader { proxy in
            
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Rectangle()
                        .foregroundColor(.green)
                        .overlay(Text("1"))
                        .frame(width: proxy.size.width/2 , height: proxy.size.height/2)
                    
                    Rectangle()
                        .foregroundColor(.orange)
                        .overlay(Text("2"))
                        .frame(width: proxy.size.width/2 , height: proxy.size.height/2)
                }
                
                Rectangle()
                    .foregroundColor(.purple)
                    .overlay(Text("3"))
                    .frame(width: proxy.size.width , height: proxy.size.height * 0.33)
            }
            
        }
        .background(Color.red)
    }
}

struct geometryreader2_Previews: PreviewProvider {
    static var previews: some View {
        geometryreader2()
    }
}
