//
//  list2.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct Tele {
    let title: String
    let imageName: String
}

let home = [
    Tele(title: "Laptop", imageName: "laptopcomputer"),
    Tele(title: "Mac Mini", imageName: "macmini"),
    Tele(title: "Mac Pro", imageName: "macpro.gen3"),
    Tele(title: "Displays", imageName: "display.2"),
    Tele(title: "Apple TV", imageName: "appletv")
]

let job = [
    
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Apple Watch", imageName: "applewatch")
]

struct list2: View {
    var body: some View {
        
        List {
            
            Section(header: Text("Home")){
                
                ForEach(home, id: \.title) { tel in
                    
                    Label(tel.title, systemImage: tel.imageName)
                    
                }
            }
            
            Section(header: Text("Work") ) {
                
                ForEach(job, id: \.title) { tel in
                    
                    Label(tel.title, systemImage: tel.imageName)
                }
            }
            
        }.listStyle(SidebarListStyle())
    }
}

struct list2_Previews: PreviewProvider {
    static var previews: some View {
        list2()
    }
}
