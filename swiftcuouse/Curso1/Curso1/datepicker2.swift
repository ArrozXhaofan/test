//
//  datepicker2.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct datepicker2: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        
        Form {
            DatePicker("Fecha", selection: $currentDate)
                .datePickerStyle(.compact)
            
            Text(currentDate, style: .date)
        }
    }
}

struct datepicker2_Previews: PreviewProvider {
    static var previews: some View {
        datepicker2()
    }
}
