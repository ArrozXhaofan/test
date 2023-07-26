//
//  form1.swift
//  Curso1
//
//  Created by Jean L2 on 5/07/23.
//

import SwiftUI

struct form1: View {
    
    @State var deviceName: String = "iPhone 12 Pro Max"
    @State var isNetworkOn: Bool = true
    @State var date: Date = Date()
    @State var color: Color = .brown
    
    var body: some View {
        
        Form {
            
            Section(header: Text("Settings")){
                
                TextField("Device Name", text: $deviceName)
                Toggle("Wi-Fi", isOn: $isNetworkOn)
                
            }
            
            Section(header: Text("Account"), footer:
            
                HStack {
                    Spacer()
                    Label("version 1.0", systemImage: "iphone")
                    Spacer()
                }
            ){
                
                DatePicker("Date", selection: $date)
                ColorPicker("Color", selection: $color)
            }
            
            
            
        }
        
    }
}

struct form1_Previews: PreviewProvider {
    static var previews: some View {
        form1()
    }
}
