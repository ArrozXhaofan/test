//
//  View3.swift
//  enviromentobjetc
//
//  Created by Jean L2 on 8/07/23.
//

import SwiftUI

struct View3: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        
        VStack {
            
            Text("View 3")
                .padding()
            
            Button("Incrementar") {
                viewModel.counter += 1
            }
        }
        
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}
