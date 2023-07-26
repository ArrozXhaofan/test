
import SwiftUI

struct Promnotas: View {
    
    @State var numNotas:Int = 0
    
    @State var txtNote1: String = ""
    @State var txtNote2: String = ""
    @State var txtNote3: String = ""
    @State var txtNote4: String = ""
    
    @State var prom: Double = 0.0
    
    
    func hallarProm() {
        
        var n1:Double = 0.0
        var n2:Double = 0.0
        var n3:Double = 0.0
        var n4:Double = 0.0
        
        if txtNote1 != "" || txtNote2 != "" || txtNote3 != "" || txtNote4 != "" {
            
            n1 = Double(txtNote1) ?? 0
            n2 = Double(txtNote2) ?? 0
            n3 = Double(txtNote3) ?? 0
            n4 = Double(txtNote4) ?? 0
            
        }else {
            n1 = 0
            n2 = 0
            n3 = 0
            n4 = 0
            
        }
        
        
        
        prom = (n1 + n2 + n3 + n4) / 4
        
    }
    
    var body: some View {
        
        Form {
            
            Section("Notas", content: {
                
                TextField("Nota 1", text: $txtNote1)
                TextField("Nota 2", text: $txtNote2)
                TextField("Nota 3", text: $txtNote3)
                TextField("Nota 4", text: $txtNote4)
            })
            
            Section(content: {
                
                Button(action: {
                    
                    hallarProm()
                    
                }, label: {
                    Label("Calcular", systemImage: "arrow.right.to.line.compact")
                })
                
            }, footer: {
                Text("Sin miedo mi bro")
            })
            
            Section(content: {
                
                Text(String(format: "%.1f", prom))
                    .bold()
                    .foregroundColor(.orange)
                
            }, footer: {
                Text("Con un 10.5 la haces mi rey")
            })
        }
    }
}

struct Promnotas_Previews: PreviewProvider {
    static var previews: some View {
        Promnotas()
    }
}
