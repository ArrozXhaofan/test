//
//  ProfileView.swift
//  ListWorks2
//
//  Created by Jean L2 on 24/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    let programador: Programador
    
    var body: some View {
        
        VStack {
            
            programador.avatar
                .resizable()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
            
            HStack {
                Text(programador.name)
                    .bold()
                .font(.title)
                
                Image(systemName: "star.fill")
                    .foregroundColor(programador.favorite ? .yellow : .gray)
            }
            
            Text(programador.lenguage)
                .font(.headline)
                .foregroundColor(.gray)
                
                
                
            
            Spacer()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(programador: Programador(name: "Name", lenguage: "swift", age: 11, favorite: false, avatar: Image(systemName: "person.fill")))
    }
}
