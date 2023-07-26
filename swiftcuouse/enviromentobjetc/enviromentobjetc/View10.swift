//
//  View10.swift
//  enviromentobjetc
//
//  Created by Jean L2 on 8/07/23.
//

import SwiftUI

final class LaClase: ObservableObject {
    @Published var contador:Int = 0
}

struct View10: View {
    
    @StateObject var v1 = LaClase()
    
    var body: some View {
        
        VStack {
            
            Text("Contador: \(v1.contador)")
                .bold()
                .foregroundColor(.blue)
                .font(.largeTitle)
            
            View20()
        }
        .environmentObject(v1)
        
    }
}

struct View10_Previews: PreviewProvider {
    static var previews: some View {
        View10()
    }
}
