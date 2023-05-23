//
//  ExamplesData.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 17/6/21.
//

import Foundation

final class ExamplesData {
    
    public class func getBasicExamples() -> [Example] {
        return [
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
            Example(type: .grids, imageName: "square.grid.3x2"),
            Example(type: .form, imageName: "square.fill.text.grid.1x2"),
            Example(type: .navigation, imageName: "arrowshape.zigzag.forward"),
            Example(type: .tabBarNavigation, imageName: "squares.below.rectangle"),
            Example(type: .tabPage, imageName: "ellipsis.rectangle"),
            Example(type: .fullScreen, imageName: "rectangle.on.rectangle"),
            Example(type: .alert, imageName: "uiwindow.split.2x1"),
            Example(type: .actionSheet, imageName: "rectangle.bottomthird.inset.fill"),
            Example(type: .contextMenu, imageName: "filemenu.and.selection"),
            Example(type: .tapGesture, imageName: "hand.tap"),
            Example(type: .dragGesture, imageName: "hand.draw")
        ]
    }
}
