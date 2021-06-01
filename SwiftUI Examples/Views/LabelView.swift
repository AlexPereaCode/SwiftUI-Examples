//
//  LabelView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 1/6/21.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Label("Label with image", systemImage: "house")
            .font(.body)
        Label("Font large + Image", systemImage: "house")
            .font(.largeTitle)
        Label("Priority Text Label", systemImage: "house")
            .font(.largeTitle)
            .labelStyle(TitleOnlyLabelStyle())
        Label("Priority Icon Label", systemImage: "house")
            .font(.largeTitle)
            .labelStyle(IconOnlyLabelStyle())
        Label("Foreground color", systemImage: "house")
            .foregroundColor(.red)
        Label("This is a multiline Label with 5 lines, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris neque mi, laoreet id dapibus in, tincidunt et sapien. Quisque et est venenatis, sollicitudin nulla vel, sollicitudin magna. Nulla a malesuada justo. Quisque ac leo vel diam ultrices interdum. Maecenas consectetur ipsum nulla. Suspendisse mattis ex nec purus maximus fringilla.", systemImage: "house")
            .labelStyle(TitleOnlyLabelStyle())
            .font(.body)
            .lineLimit(5)
            .padding()
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
