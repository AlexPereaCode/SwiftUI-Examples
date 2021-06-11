//
//  ActionSheetView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 10/6/21.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {

        Button("Show Action Sheet") {
            isPresented = true
        }
        .actionSheet(isPresented: $isPresented, content: {
            ActionSheet(title: Text("This is a title"),
                        message: Text("This is a message"),
                        buttons: [.default(Text("Default"),
                        action: {
                            print("Default Button Pressed")
                        }),
                        .default(Text("Second Option")),
                        .destructive(Text("Destructive Button"))])
        })
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
