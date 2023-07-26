//
//  contextmenu1.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct contextmenu1: View {
    
    
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(0)
            .contextMenu(ContextMenu(menuItems: {
                
                Button("SwiftUI"){
                    print("Quiero aprender SwiftUI")
                }
                
                Button("xCode"){
                    print("Quiero aprender xCode")
                }
                
                Button(action: {
                    print("Quiero aprender SwiftUI")
                }, label: {
                    Label("Swift", systemImage: "iphone")
                })
                
                
            } ))
        
    }
}

struct contextmenu1_Previews: PreviewProvider {
    static var previews: some View {
        contextmenu1()
    }
}
