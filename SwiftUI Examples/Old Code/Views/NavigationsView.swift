//
//  NavigationsView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 9/6/21.
//

import SwiftUI

struct NavigationsView: View {
    var body: some View {
        List {
            NavigationLink("Labels", destination: LabelView())
            NavigationLink("Texts", destination: TextView())
            NavigationLink("Textfields", destination: TextFieldView())
            NavigationLink("Button Example", destination: Button("Print Message", action: {
                print("Hello World")
            }))
        }
        .navigationBarItems(trailing: Button("Right", action: {
            print("Right Bar Button Pressed")
        }))
        .navigationTitle("Navigations")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarHidden(false)
    }
}

struct NavigationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationsView()
    }
}
