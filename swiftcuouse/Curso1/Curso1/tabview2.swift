//
//  tabview2.swift
//  Curso1
//
//  Created by Jean L2 on 6/07/23.
//

import SwiftUI

struct tabview2: View {
    var body: some View {
        
        TabView {
            
            colorpicker2()
                .tabItem {
                    Image(systemName: "appletv")
                    Text("Apple tv")
                }
            
            HomeView2()
            
            Text("This is the second view")
                .tabItem {
                    Image(systemName: "4k.tv.fill")
                    Text("Tv 4K")
                }
            
            form2()
                .tabItem {
                    Image(systemName: "iphone")
                    Text("Formulary")
                }
            
        }
        
    }
}

struct tabview2_Previews: PreviewProvider {
    static var previews: some View {
        tabview2()
    }
}

struct HomeView2: View {
    var body: some View {
        Text("This is my home view")
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
    }
}
