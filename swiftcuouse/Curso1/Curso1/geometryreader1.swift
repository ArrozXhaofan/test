import SwiftUI

struct geometryreader1: View {
    var body: some View {
        
        
        GeometryReader {proxy in
            
            VStack {
                Text("Width: \(proxy.size.width)")
                    .background(Color.orange)
                    .padding()
                
                Text("Height: \(proxy.size.height)")
                    .background(Color.orange)
                    .padding()
                
                Text("Coordinate Local: \(proxy.frame(in: .local).debugDescription)")
                    .background(Color.orange)
                    .padding()
                
                Text("Coordinate Local: \(proxy.frame(in: .global).debugDescription)")
                    .background(Color.orange)
                    .padding()
            }
        }
        .background(Color.red)
        .frame(width: 300, height: 300)
        
    }
}

struct geometryreader1_Previews: PreviewProvider {
    static var previews: some View {
        geometryreader1()
    }
}
