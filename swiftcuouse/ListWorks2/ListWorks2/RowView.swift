//
//  RowView.swift
//  ListWorks2
//
//  Created by Jean L2 on 22/07/23.
//

import SwiftUI

struct RowView: View {
    
    var programadorTest: Programador
    
    
    var body: some View {
        
        HStack {
            
            programadorTest.avatar
                .resizable()
                .frame(width: 50, height: 50)
                .padding(10)
            
            VStack(alignment: .leading) {
                
                Text(programadorTest.name)
                    .bold()
                    .font(.title)
                
                Text(programadorTest.lenguage)
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            
            Spacer()
            
            Image(systemName: "star.fill")
                .padding(.horizontal, 10)
                .foregroundColor(programadorTest.favorite ? .yellow : .gray)
        }
        
        
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programadorTest: Programador(name: "Jean Laura", lenguage: "Typescritp, S", age:12, favorite: true, avatar: Image(systemName: "person.fill")))
    }
}
