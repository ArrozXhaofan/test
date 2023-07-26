//
//  ImageView.swift
//  Swift UI tutorial
//
//  Created by Jean L2 on 19/06/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
       
        
        Image("foto")
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            
            Image("foto")
                .resizable()
                .frame(width: 300, height: 300)
                .padding(50)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                .shadow(radius: 5)
            
            Spacer()
            
            Image(systemName: "square.and.arrow.up")
                .resizable()
                .frame(width: 50,height: 60)
                .foregroundColor(Color.blue)
            
            
            
            
        }
        
    }
}
