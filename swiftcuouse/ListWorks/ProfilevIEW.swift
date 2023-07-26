

import SwiftUI

struct ProfilevIEW: View {
    
    var programmer: Programmer
    
    @Binding var favorite: Bool
    
    
    var body: some View {
        
        
        VStack {
            
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            
            HStack {
                Text(programmer.name)
                    .font(.largeTitle)
                
                Button(action: {
                    
                    favorite.toggle()
                    
                }, label: {
                    Image(systemName: "star.fill")
                        .foregroundColor(programmer.favorite ? .yellow : .gray)
                })
            }
            
            Text(programmer.lenguages)
                .font(.title)
            
            Spacer()
            
        }
        
    }
}

struct ProfilevIEW_Previews: PreviewProvider {
    static var previews: some View {
        
        ProfilevIEW(programmer: Programmer(id: 1, name: "Jeanpiere", lenguages: "Ty, Swift UI", avatar: Image(systemName: "person.fill"), favorite: true), favorite: .constant(false))
        
    }
}
