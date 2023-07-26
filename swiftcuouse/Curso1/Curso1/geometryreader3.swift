//
//  geometryreader3.swift
//  Curso1
//
//  Created by Jean L2 on 10/07/23.
//

import SwiftUI

let arrayOfNames = [
    "Susbribete a SwiftBeta",
    "Aprende SwitUI",
    "Aprende Swift",
    "Aprende xCode",
    "Suscribete al canal de yourtube",
    "SwiftUI",
    "Xcode",
    "Swift"
]

struct geometryreader3: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                ForEach(arrayOfNames, id: \.self) { name in
                    
                    GeometryReader { proxy in
                        
                        VStack {
                            Text("\(proxy.frame(in: .global).minY)")
                            Spacer()
                            Text("\(name)")
                                .frame(width: 370, height: 200)
                                .background(Color.green)
                                .cornerRadius(20)
                            Spacer()
                        }
                        .shadow(radius: 10, x: 0, y: 0)
                        .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).minY) - 47), axis: (x:0.3, y: 1.0, z:1.0)
                        )
                    }
                    .frame(width: 370, height: 300)
                    
                }
            }
            .padding(.trailing)
        }
        .padding(.horizontal)
        
    }
}

struct geometryreader3_Previews: PreviewProvider {
    static var previews: some View {
        geometryreader3()
    }
}
