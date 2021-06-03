//
//  ContentView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 31/5/21.
//

import SwiftUI

enum ExampleType: String {
    case label = "Label"
    case text = "Text"
    case button = "Button"
    case image = "Image"
    case stacks = "Stacks"
    case textField = "TextField"
}

struct Example {
    let type: ExampleType
    let imageName: String
}

let basics = [
    Example(type: .label, imageName: "textformat"),
    Example(type: .text, imageName: "textformat.abc"),
    Example(type: .button, imageName: "capsule"),
    Example(type: .image, imageName: "photo"),
    Example(type: .stacks, imageName: "square.3.stack.3d"),
    Example(type: .textField, imageName: "textbox")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Basics")) {
                    ForEach(basics, id: \.type) { item in
                        NavigationLink(destination: getDestinationView(type: item.type)) {
                            Label(item.type.rawValue, systemImage: item.imageName)
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

@ViewBuilder
func getDestinationView(type: ExampleType) -> some View {
    switch type {
    case .label:
        LabelView()
    case .text:
        TextView()
    case .button:
        ButtonView()
    case .image:
        ImageView()
    case .stacks:
        StacksView()
    case .textField:
        TextFieldView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
