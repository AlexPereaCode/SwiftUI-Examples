//
//  TextView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 1/6/21.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Text")
        Text("Text underline")
            .font(.largeTitle)
            .underline(true, color: .red)
        Text("Text 3D Effect")
            .rotation3DEffect(.degrees(30), axis: (x: 1.0, y: 1.0, z: 0.0))
            .font(.largeTitle)
        Text("Text Shadow")
            .font(.largeTitle)
            .shadow(color: .gray, radius: 2.0, x: 0.0, y: 2.0)
        Text("This is a text with line spacing")
            .font(.largeTitle)
            .lineSpacing(10)
        
        // Multiple Formats
        VStack {
            Text("Text 1 green")
                .font(.largeTitle)
                .foregroundColor(.green)
            + Text("Text 2 undeline red")
                .font(.largeTitle)
                .foregroundColor(.red)
                .underline()
            + Text("Text Bold")
                .bold()
        }.padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
