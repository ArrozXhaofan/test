//
//  swipeactions2.swift
//  Curso1
//
//  Created by Jean L2 on 10/07/23.
//

import SwiftUI

struct Momitos {
    
    let name: String
    let img: String
}

let celulares  = [
    Momitos(name: "iphone", img: "iphone"),
    Momitos(name: "ipad", img: "ipad"),
    Momitos(name: "pc", img: "pc"),
    Momitos(name: "4k", img: "4k.tv"),
    Momitos(name: "ipod", img: "ipod"),
    Momitos(name: "laptop", img: "laptopcomputer")
]

struct swipeactions2: View {
    var body: some View {
       
        NavigationView {
            
            List {
                
                ForEach(celulares, id: \.name) { celulare in
                    
                    Label(celulare.name , systemImage: celulare.img)
                        .swipeActions(content: {
                            Button(action: {
                                print("Compartiste")
                            }, label: {
                                Label("Shared", systemImage: "square.and.arrow.down.on.square.fill")
                            })
                            .tint(.blue)
                        })
                        .swipeActions(edge: .leading, content: {
                            Button(action: {
                                print("Copiaste")
                            }, label: {
                                Label("Copiar", systemImage: "doc.on.doc")
                            })
                        })
                }
                
            }
            .refreshable {
                print("Listo")
            }
            .navigationTitle("Celulares")
            
        }

        
    }
}

struct swipeactions2_Previews: PreviewProvider {
    static var previews: some View {
        swipeactions2()
    }
}
