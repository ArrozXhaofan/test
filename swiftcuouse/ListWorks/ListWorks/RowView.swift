//
//  RowView.swift
//  ListWorks
//
//  Created by Jean L2 on 20/07/23.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    
    var body: some View {
        
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40)
                .padding(10)
                
            VStack(alignment: .leading, content: {
                
                Text(programmer.name)
                    .font(.title)
                
                Text(programmer.lenguages)
                    .font(.subheadline)
                    
            }
            )
            
            Spacer()
            
            Image(systemName: "star.fill")
                .foregroundColor(programmer.favorite ? .yellow : .gray)
                .padding(.horizontal, 10)
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer:
                    Programmer(id: 1, name: "Jean", lenguages: "Swift, Typescript", avatar: Image(systemName: "person.fill"), favorite: true))
        .previewLayout(.fixed(width: 400, height: 60))
    }
}
