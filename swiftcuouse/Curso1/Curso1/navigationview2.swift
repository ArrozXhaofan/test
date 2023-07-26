//
//  navigationview2.swift
//  Curso1
//
//  Created by Jean L2 on 6/07/23.
//

import SwiftUI

struct navigationview2: View {
    var body: some View {
        
        NavigationView {
            
            List {
                NavigationLink("Form2", destination: form2() )
                
            }.navigationTitle("Menu")
                .navigationBarItems(trailing: Button("Done", action: {
                    print("Listo")
                }) )
        }
        
        
    }
}

struct navigationview2_Previews: PreviewProvider {
    static var previews: some View {
        navigationview2()
    }
}
