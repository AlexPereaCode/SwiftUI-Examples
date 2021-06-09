//
//  TabPageView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 9/6/21.
//

import SwiftUI

struct TabPageView: View {
    var body: some View {
        TabView {
            getRectangle(color: .red, text: "Red")
            getRectangle(color: .green, text: "Green")
            getRectangle(color: .blue, text: "Blue")
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabPageView()
    }
}

private func getRectangle(color: Color, text: String) -> some View {
    ZStack {
        RoundedRectangle(cornerRadius: 20)
            .padding()
            .foregroundColor(color)
        Text(text)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(.white)
    }
    
}
