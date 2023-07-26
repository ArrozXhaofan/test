

import SwiftUI

struct stepper1: View {
    
    @State var iPhoneCounter: Int = 1
    
    var body: some View {
        
        Form {
            
            Stepper("iPhone \(iPhoneCounter)", value: $iPhoneCounter , in: 1...5,
            step: 2)
            
            Stepper("iPhone \(iPhoneCounter)", onIncrement: {
                iPhoneCounter += 1
                print("[ Incrementar ] Nùmero \(iPhoneCounter)")
            }
                    , onDecrement: {
                iPhoneCounter -= 1
                
                print("[ Decrementar ] Nùmero \(iPhoneCounter) ")
            })
            
                
        }
          
    }
}

struct stepper1_Previews: PreviewProvider {
    static var previews: some View {
        stepper1()
    }
}
