//
//  RowView.swift
//  Swift UI tutorial
//
//  Created by Jean L2 on 19/06/23.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        
        HStack {
            
            programmer.avatar
                .resizable()
                .frame(width: 40,height: 40)
            
            VStack(alignment: .leading) {
                
                Text(programmer.name)
                    .font(.title)
                
                Text(programmer.lenguage)
                    .font(.subheadline)
            }
            
            Spacer()
            
            if programmer.favorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                
            }else{
                Image(systemName: "star.fill")
                    .foregroundColor(.gray)            }
            
        }

        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Jean  ", lenguage: "Swift, Typescript", avatar: Image(systemName: "person.circle"), favorite: true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
