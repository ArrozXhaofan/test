//
//  textfield1.swift
//  Curso1
//
//  Created by Jean L2 on 4/07/23.
//

import SwiftUI

struct textfield1: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack {
            
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username, perform:  { value in
                    print("New value \(value)")
                })
            
            TextField("Password", text: $password)
                .keyboardType(.default)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .onChange(of: password, perform: {
                    value in print("Password value: \(value)")
                })
            
            
            Spacer()
        }
    }
}

struct textfield1_Previews: PreviewProvider {
    static var previews: some View {
        textfield1()
    }
}
