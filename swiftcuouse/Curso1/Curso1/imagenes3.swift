

import SwiftUI

struct imagenes3: View {
    var body: some View {
        
        VStack {
            Image("youtube")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.red)
                
     
            Text("Welcome to YouTube")
                .foregroundColor(.red)
                .font(.title2)
                .bold()
        }
    }
}

struct imagenes3_Previews: PreviewProvider {
    static var previews: some View {
        imagenes3()
    }
}
