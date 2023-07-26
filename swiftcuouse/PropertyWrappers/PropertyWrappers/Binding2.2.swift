
import SwiftUI

struct Binding2_2: View {
    
    @State var nombre: String = ""
    @State var numemro: String = ""
    
    @Binding var contacts: [Contacto]
    
    var body: some View {
        
        VStack {
            
            NavigationView {
                          
                Form {
                    
                    Section(content: {
                        
                        TextField("Nombres", text: $nombre)
                        TextField("Numero", text: $numemro)
                        
                    }, footer: {Text("Esto es un texto")})
                    
                }
                .navigationTitle("Add contact")
                
            }
            Button("Agregar", action: {
                
                let newContac:Contacto = Contacto(nombre: nombre, numero: numemro)
            
                contacts.append(newContac)
                
                nombre = ""
                numemro = ""
                
            })
            
        }
        
    }
}

struct Binding2_2_Previews: PreviewProvider {
    static var previews: some View {
        Binding2()
    }
}
