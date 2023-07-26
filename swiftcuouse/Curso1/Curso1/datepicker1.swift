//
//  datepicker1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct datepicker1: View {
    
    @State var currentDate:Date = Date()
    var body: some View {
        
        Form {
            DatePicker("Fecha", selection: $currentDate,
                       in: Date()..., displayedComponents: .date)
            
            Text(currentDate, style: .date)
                .bold()
        }
        
            
    }
}

struct datepicker1_Previews: PreviewProvider {
    static var previews: some View {
        datepicker1()
    }
}
