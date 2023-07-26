//
//  tabgesture1.swift
//  Curso1
//
//  Created by Jean L2 on 7/07/23.
//

import SwiftUI

struct tabgesture1: View {
    var body: some View {
       
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .onTapGesture(count:3) {
                print("Active")
            }
            //.gesture(
              //  TapGesture(count: 2)
                //    .onEnded({ _ in
                  //      print("Active")
                    //}))
    }
}

struct tabgesture1_Previews: PreviewProvider {
    static var previews: some View {
        tabgesture1()
    }
}
