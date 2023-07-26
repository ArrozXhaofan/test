//
//  link2.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct link2: View {
    var body: some View {
        
        VStack {
            
            Link("Apple", destination: URL(string: "https://www.apple.com")!)
                .padding(10)
            
            Link(destination: URL(string: UIApplication.openSettingsURLString)! , label: {
                Label("Seggtins", systemImage: "gear")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            })
        }
    }
}

struct link2_Previews: PreviewProvider {
    static var previews: some View {
        link2()
    }
}
