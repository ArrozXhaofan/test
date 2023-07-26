
import SwiftUI


//  CONTACTOS CONTACTO
struct Contact: Identifiable {
    let id = UUID()
    var name: String
    var phoneNumber: String
}

// VISTA PRINCIPAL PADRE
struct Binding3: View {
    
    @State private var contacts: [Contact] = [
            Contact(name: "John Doe", phoneNumber: "123-456-7890"),
            Contact(name: "Jane Smith", phoneNumber: "987-654-3210")
        ]
        
        @State private var isPresentingAddContactSheet = false
    
    var body: some View {
        
        NavigationView {
                    List(contacts) { contact in
                        Text(contact.name)
                    }
                    .navigationBarTitle("Contacts")
                    .navigationBarItems(trailing:
                        Button(action: {
                            isPresentingAddContactSheet = true
                        }) {
                            Image(systemName: "plus")
                        }
                    )
                    .sheet(isPresented: $isPresentingAddContactSheet) {
                        AddContactView(contacts: $contacts)
                    }
                }
    }
}

// VISTA SECUNDARIA HIJO
struct AddContactView: View {
    @Binding var contacts: [Contact]
    @State private var name = ""
    @State private var phoneNumber = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Phone Number", text: $phoneNumber)
            }
            .navigationBarTitle("Add Contact")
            .navigationBarItems(trailing:
                                    Button("Save") {
                let newContact = Contact(name: name, phoneNumber: phoneNumber)
                contacts.append(newContact)
                name = ""
                phoneNumber = ""
            }
            )
        }
    }
        
    }


struct Binding3_Previews: PreviewProvider {
    static var previews: some View {
        Binding3()
    }
}
