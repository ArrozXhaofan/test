

import SwiftUI

struct colorpicker2: View {
    
    @State var color:Color = .green
    
    var body: some View {
        
        VStack {
            
            ColorPicker("Elije un color", selection: $color)
                
            Spacer()
            
            Rectangle()
                .frame(width: 200 , height: 150)
                .cornerRadius(20)
                .foregroundColor(color)
                
        }.padding(60)
        
    }
}

struct colorpicker2_Previews: PreviewProvider {
    static var previews: some View {
        colorpicker2()
    }
}
