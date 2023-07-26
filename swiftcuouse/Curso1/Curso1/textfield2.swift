//
//  textfield2.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI


struct textfield2: View {
    
    @State var user: String = ""
    @State var pass: String = ""
    
    var body: some View {
        
        VStack {
            TextField("Tu nombre mrd", text: $user )
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .bold()
                .font(.headline)
                .padding(8)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
            .padding(.horizontal, 60)
            .padding(.top, 50)
            .onChange(of: user, perform: {
                value in print("User: \(value) ")
            })
            
            Spacer()
        }
        
    }
}

struct textfield2_Previews: PreviewProvider {
    static var previews: some View {
        textfield2()
    }
}
