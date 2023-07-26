

import SwiftUI

struct dragesture1: View {
    
    @State var dragoffset: CGSize = .zero
    @State var size: CGFloat = 100
    @State var tamaño: Color = .blue
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: size, height: size)
            .foregroundColor(tamaño)
            .offset(x: dragoffset.width, y: dragoffset.height)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        dragoffset = value.translation
                        withAnimation(.easeIn(duration: 0.2)){
                            tamaño = .green
                            size = 150
                            
                        }
                        
                        
                    }).onEnded({ _ in
                        withAnimation(.spring()){
                            dragoffset = .zero
                            tamaño = .blue
                            size = 100
                        }
                        
                    })
            )
    }
}

struct dragesture1_Previews: PreviewProvider {
    static var previews: some View {
        dragesture1()
    }
}
