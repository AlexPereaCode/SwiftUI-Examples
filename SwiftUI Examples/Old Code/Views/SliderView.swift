//
//  SliderView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 8/6/21.
//

import SwiftUI

struct SliderView: View {
    
    @State var counter: Float = 0.0
    @State var isEditing: Bool = false
    
    var body: some View {
        Form {
            Slider(value: $counter, in: 0...100, step: 10, onEditingChanged: { editing in
                isEditing = editing
            }, minimumValueLabel: Text("MIN"), maximumValueLabel: Text("MAX")) {
                Text("Select Value")
            }
            Text("\(Int(counter))")
                .foregroundColor(isEditing ? .red : .green)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
