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
    case textEditor = "TextEditor"
    case datePicker = "DatePicker"
    case colorPicker = "ColorPicker"
    case progressView = "ProgressView"
    case link = "Link"
    case toogle = "Toogle"
    case stepper = "Stepper"
    case slider = "SliderView"
    case grids = "Grids"
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
    Example(type: .textField, imageName: "textbox"),
    Example(type: .textEditor, imageName: "contextualmenu.and.cursorarrow"),
    Example(type: .datePicker, imageName: "calendar"),
    Example(type: .colorPicker, imageName: "eyedropper.halffull"),
    Example(type: .progressView, imageName: "slowmo"),
    Example(type: .link, imageName: "link"),
    Example(type: .toogle, imageName: "switch.2"),
    Example(type: .stepper, imageName: "rectangle.split.2x1"),
    Example(type: .slider, imageName: "slider.horizontal.3"),
    Example(type: .grids, imageName: "square.grid.3x2")
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
    case .textEditor:
        TextEditorView()
    case .datePicker:
        DatePickerView()
    case .colorPicker:
        ColorPickerView()
    case .progressView:
        ActivityView()
    case .link:
        LinkView()
    case .toogle:
        ToggleView()
    case .stepper:
        StepperView()
    case .slider:
        SliderView()
    case .grids:
        GridsView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
