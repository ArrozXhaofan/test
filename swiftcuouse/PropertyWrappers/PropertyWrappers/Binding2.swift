import SwiftUI

struct Binding2: View {
    
    @State var isSheetOn: Bool = false
    @State var contactos: [Contacto] = [
    
        Contacto(nombre: "Jean", numero: "123"),
        Contacto(nombre: "Hueso", numero: "245"),
        Contacto(nombre: "Cabezon", numero: "353")
    ]
    
    @State var newContacto: Contacto = Contacto(nombre: "", numero: "")
    

    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(content: {
                    
                }, footer: {
                    
                    Text("Texto nulo")
                })
                
                List {
                    ForEach(contactos,id: \.nombre ){ contacto in
                        
                        Text("\(contacto.nombre)")
                    }
                }
                
                Section("Agregue un contacto", content: {
                    
                    Button(action: {
                        
                        isSheetOn = true
                        
                    }, label: {
                        HStack{
                            Image(systemName: "plus.viewfinder")
                            
                            Text("Add contact")
                        }
                    })
                    
                })
            }
            .navigationTitle("Contactos")
            
        }
        .sheet(isPresented: $isSheetOn , content: {
            Binding2_2(contacts: $contactos)
            
        })
        
    }
}

struct Binding2_Previews: PreviewProvider {
    static var previews: some View {
        Binding2()
    }
}
