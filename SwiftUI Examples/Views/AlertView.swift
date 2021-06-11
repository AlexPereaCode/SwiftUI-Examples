//
//  AlertView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 10/6/21.
//

import SwiftUI

struct AlertView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        Button("Show Alert") {
            isPresented = true
        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("This is a title"),
                  message: Text("This is a message"),
                  primaryButton: .default(Text("Default"), action: {
                    print("Default Button Pressed")
                  }),
                  secondaryButton: .destructive(Text("Cancelar")))
        })
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
