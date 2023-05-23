//
//  ImageView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 1/6/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("xcode-logo")
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
