//
//  link1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct link1: View {
    var body: some View {
        
        Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
            Label("Settings", systemImage: "gear")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(12)
        })
        
    }
}

struct link1_Previews: PreviewProvider {
    static var previews: some View {
        link1()
    }
}
