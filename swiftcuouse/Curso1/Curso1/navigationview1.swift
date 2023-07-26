import SwiftUI

struct navigationview1: View {
    
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                NavigationLink("Option Menu 1",
                destination: progresview1() )
                
                NavigationLink("Option Menu 2", destination: form2() )
                
                Text("Option Menu 3")
                Text("Option Menu 4")
                
            }.navigationBarItems(trailing: Button("Done", action:  {
                print("NavigationVew Button")
            }))
            
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(false)
            
        }
    }
}

struct navigationview1_Previews: PreviewProvider {
    static var previews: some View {
        navigationview1()
    }
}
