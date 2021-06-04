//
//  ColorPickerView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 4/6/21.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State var selectedColor: Color = .red
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: 70, height: 70)
            ColorPicker("Select a color", selection: $selectedColor)
            Spacer()
        }.padding(10)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
