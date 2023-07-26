//
//  propertywrappers2.swift
//  Curso1
//
//  Created by Jean L2 on 8/07/23.
//

import SwiftUI

struct propertywrappers2: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        
        VStack {
            
            Text("Contador \(counter)")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Button("Incrementar") {
                counter += 1
            }
            
            ListVideos2()
            
            Spacer()
        }
        

    }
}


struct ListVideos2: View {
    
    @StateObject private var videosModel = VideoViewModel2()
    
    var body: some View {
        
        NavigationView {
            List(videosModel.videosModel, id: \.self) { video in
                Text(video)
                
            }
            .navigationTitle("My activities")
            .navigationBarItems(leading:
                                    Button("Añadir", action:  {videosModel.addMoreTopics()} ))
        }
        
    }
    
    
}

final class VideoViewModel2:ObservableObject {
    
     @Published var videosModel: [String] = []
    
    init(){
        videosModel = []
    }
    
    func addMoreTopics() {
        videosModel.append("Levantarse")
        videosModel.append("Trabajar")
        videosModel.append("Estudiar")
        videosModel.append("Ejercicios")
        videosModel.append("Dormir")
    }
    
}







struct propertywrappers2_Previews: PreviewProvider {
    static var previews: some View {
        propertywrappers2()
    }
}
