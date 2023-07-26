//
//  tabview1.swift
//  Curso1
//
//  Created by Jean L2 on 6/07/23.
//

import SwiftUI

struct tabview1: View {
    var body: some View {
        
        TabView {
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.blue)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.red)
            
            HomeView()
            
            ProfileView()
            
        }.accentColor(.green)
            .frame(height: 400)
            //.tabViewStyle(PageTabViewStyle())
    }
}

struct tabview1_Previews: PreviewProvider {
    static var previews: some View {
        tabview1()
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            Text("Home")
                .padding(.top, 32)
            
        }.tabItem {
            Image(systemName: "house.fill")
            
            Text("Home")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile")
            .tabItem {
                Image(systemName: "square.and.arrow.down")
                Text("Profile")
            }
    }
}
