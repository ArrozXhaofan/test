

import SwiftUI

struct propertyWrappers3: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        
        VStack {
            
            Text("Contador: \(counter)")
                .font(.largeTitle)
                .bold()
                .padding()
                
            
            Button("Incrementar", action: {
                counter += 5
            })
            
            ListVideos3()
            
            Spacer()
            
        }
        
    }
}



struct ListVideos3: View {
    
    @StateObject var listVideos = RutinaModel()
    
    var body: some View {
        
        NavigationView {
            
            List(listVideos.listVideos, id: \.self) { video in
                Text(video)
            }
            .navigationTitle("Rutina")
            .navigationBarItems(leading:
                                    Button("Añadir", action: {
                listVideos.addMoreRutine()
            })
            )
        }
    }

}


final class RutinaModel:ObservableObject {
    
    @Published var listVideos: [String] = []
    
    init(){
        listVideos = []
    }
    
    func addMoreRutine() {
        listVideos.append("Rutina 1")
        listVideos.append("Rutina 2")
        listVideos.append("Rutina 3")
        listVideos.append("Rutina 4")
    }

}




struct propertyWrappers3_Previews: PreviewProvider {
    static var previews: some View {
        propertyWrappers3()
    }
}
