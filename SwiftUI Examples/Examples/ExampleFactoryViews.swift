//
//  ExampleFactoryViews.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 17/6/21.
//

import SwiftUI

final class ExampleFactoryViews {
    
    public func getDestinationView(type: ExampleType) -> some View {
        destinationView(type: type)
    }
    
    @ViewBuilder
    private func destinationView(type: ExampleType) -> some View {
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
        case .form:
            FormView()
        case .navigation:
            NavigationsView()
        case .tabBarNavigation:
            TabBarNavigationView()
        case .tabPage:
            TabPageView()
        case .fullScreen:
            FullScreenView()
        case .alert:
            AlertView()
        case .actionSheet:
            ActionSheetView()
        case .contextMenu:
            ContextMenuView()
        case .tapGesture:
            TapGestureView()
        case .dragGesture:
            DragGestureView()
        }
    }
}
