//
//  ContentView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 31/5/21.
//

import SwiftUI

struct Example {
    let name: String
    let imageName: String
}

let items = [
    Example(name: "Label", imageName: "textformat"),
    Example(name: "Text", imageName: "textformat.abc"),
    Example(name: "Button", imageName: "capsule"),
    Example(name: "Image", imageName: "photo")
]

struct ContentView: View {
    var body: some View {
        List {
            Section(header: Text("Examples")) {
                ForEach(items, id: \.name) { item in
                    Label(item.name, systemImage: item.imageName)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
