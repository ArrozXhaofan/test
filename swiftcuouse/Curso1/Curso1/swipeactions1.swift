//
//  swipeactions1.swift
//  Curso1
//
//  Created by Jean L2 on 10/07/23.
//

import SwiftUI

struct Celu {
    let name: String
    let systemImage: String
}

let arrayDevice = [
    Celu(name: "iphone", systemImage: "iphone"),
    Celu(name: "ipad", systemImage: "ipad"),
    Celu(name: "pc", systemImage: "pc"),
    Celu(name: "4k", systemImage: "4k.tv"),
    Celu(name: "ipod", systemImage: "ipod"),
    Celu(name: "laptop", systemImage: "laptopcomputer")
    
    
]

struct swipeactions1: View {
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(arrayDevice, id: \.name) { device in
                    
                    Label(device.name, systemImage: device.systemImage)
                        .swipeActions(content: {
                            Button(action: {
                                print("favorito")
                            }, label: {
                                Label("Favorito", systemImage: "star.fill")
                            })
                            .tint(.yellow)
                            
                            Button(action: {
                                print("compratir")
                            }, label: {
                                Label("Compartir", systemImage: "square.and.arrow.up.fill")
                                    
                            })
                            .tint(.blue)
                        })
                        .swipeActions(edge: .leading) {
                            Button(action: {
                                print("vas a reiniciar")
                            }, label: {
                                Label("Borrar", systemImage: "trash.fill")
                            })
                            .tint(.red)
                            
                            Button(action: {
                                print("Hola q jace")
                            }, label: {
                                
                                Label("Hacer", systemImage: "square.and.arrow.down.on.square.fill")
                            })
                            .tint(.green)
                            
                        }
                        
                        
                }
            }
            .refreshable {
                print("Recargar informacion")
            }
            .navigationTitle("Devices")
        }
        
        
    }
}

struct swipeactions1_Previews: PreviewProvider {
    static var previews: some View {
        swipeactions1()
    }
}
