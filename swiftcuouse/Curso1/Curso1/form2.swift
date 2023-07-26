//
//  form2.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct form2: View {
    
    @State var texto: String = "iPhone 12 Pro Max"
    @State var isWifiWkordOn: Bool = true
    @State var today: Date = Date()
    @State var color: Color = .brown
    
    var body: some View {
        
        Form {
            
            Section(header: Text("Settings")) {
                
                TextField("Device Name", text: $texto)
                Toggle("Wifi", isOn: $isWifiWkordOn)
            }
            
            Section(header: Text("Account"), footer:
                        HStack {
                Spacer()
                Label("Version 1.0", systemImage: "iphone")
                Spacer()
            }) {
                
                DatePicker("Date", selection: $today)
                ColorPicker("Color", selection: $color)
            }
            
            Section {
                
                Button(action: {
                    print("Tu informacion fue enviada")
                }, label: {
                
                    Text("Send")
                        .foregroundColor(.white)
                        .font(.headline)
                        .bold()
                        .padding(10)
                        .background(Color.blue)
                        .cornerRadius(7)
                        
                })
            }
            
        }
        
    }
}

struct form2_Previews: PreviewProvider {
    static var previews: some View {
        form2()
    }
}
