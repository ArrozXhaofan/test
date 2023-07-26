import SwiftUI

struct Binding1: View {
    
    @State var contador:Int = 2
    
    var body: some View {
        
        VStack {
            
            Binding1_2(bind: $contador)
            
        }
        
    }
}

struct Binding1_Previews: PreviewProvider {
    static var previews: some View {
        Binding1()
    }
}
