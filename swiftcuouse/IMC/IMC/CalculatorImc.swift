//
//  CalculatorImc.swift
//  IMC
//
//  Created by Jean L2 on 18/07/23.
//

import SwiftUI

struct CalculatorImc: View {
    
    @State var isKgOn: Bool = true
    @State var isCmOn: Bool = true
    
    @State var txtPeso: String = ""
    @State var txtTalla: String = ""
    
    @State var valueWeight: Double = 1
    @State var valueTall: Double = 39.37
    
    @State var valueImc: Double = 0.0
    
    @State var color: Color = .blue
    
    func convertirPeso() {
        
        if isKgOn {
            valueWeight = 1
        }else {
            valueWeight = 2.204
        }
    }
    
    func convertirTalla() {
        
        if isCmOn {
            valueTall = 1
        }else {
            valueTall = 39.37
        }
    }
    
    func colorTexto(){
        
        if valueImc == 0 {
            color = .blue
        }
        else {
            
            let peso = valueImc
            
            if peso < 18.5 {
                color = .red
            }
            else if peso >= 18.5 && peso <= 24.9 {
                color = .green
            }
            else if peso >= 25 && peso <= 29.9 {
                color = .yellow
            }else {
                color = .red
            }
        }
        
    }
    
    func hallarImc() {
        
        var peso: Double = 0.0
        var talla: Double = 0.0
        
        if txtPeso != "" {
            peso = (Double(txtPeso) ?? 0)
            peso = peso / valueWeight
        }
        else{peso = 0}
        
        
        if txtTalla != "" {
            
            talla = ((Double(txtTalla) ?? 0) / 100) / valueTall
    

        }
        else{talla = 0}
        
        valueImc = peso / (talla * talla)
        
        print("\(talla) - \(peso)")
            
    }
    
    
    
    var body: some View {
        
        NavigationView {
            Form {
                
                Section(content: {
                    
                    Toggle( isKgOn ? "Kg" : "Lb"  , isOn: $isKgOn)
                        .onChange(of: isKgOn, perform: { value in
                            convertirPeso()
                            hallarImc()
                            colorTexto()
                        })
                    
                    
                    
                    Toggle( isCmOn ? "Cm" : "Inch"  , isOn: $isCmOn)
                        .onChange(of: isCmOn, perform: {value in
                            convertirTalla()
                            hallarImc()
                            colorTexto()
                        })
                    
                    
                }, footer: {
                    Text("Elija si desea convertir si peso es en kilogramos o libras 1kg = 2.20462lb - 1Inch = 2.54cm")
                })
                
                Section("Peso y talla", content: {
                    
                    TextField("Select your weight", text: $txtPeso)
                        .keyboardType(.numberPad)
                    
                    TextField("Select your tall", text: $txtTalla)
                        .keyboardType(.numberPad)
                    
                    
                })
                
                
                
                Section(content: {
                    
                    Text(String(format: "%.1f", valueImc ))
                        .onChange(of: txtPeso, perform: {value in
                            hallarImc()
                            colorTexto()
                        })
                        .foregroundColor(color)
                        .onChange(of: txtTalla, perform: {value in
                            hallarImc()
                            colorTexto()
                        })
                        .foregroundColor(color)
                    
                }, footer: {
                    
                    Text("Mientras el color sea verde estas bien bro 😁")
                    
                })
                
                
            }
            .navigationTitle("Verificador")
            
        }
    }
        
    
}

struct CalculatorImc_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorImc()
    }
}
