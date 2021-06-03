//
//  StacksView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 3/6/21.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        ZStack {
            // Below
            VStack(alignment: .leading, spacing: 5, content: {
                Text("Apple Xcode")
                    .font(.largeTitle)
                    .bold()
                Text("IDE for developers")
                    .foregroundColor(.gray)
                HStack {
                    Image("xcode-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    VStack(alignment: .leading, spacing: 3) {
                        HStack {
                            Circle()
                                .foregroundColor(.green)
                                .frame(width: 15, height: 15)
                            Text("Alex Perea")
                                .font(.headline)
                        }
                        
                        Text("iOS Developer")
                            .foregroundColor(.gray)
                        Text("Obj-C, Swift & SwiftUI")
                            .foregroundColor(.gray)
                            .fontWeight(.bold)
                    }
                }
            })
            // In Front
            Rectangle()
                .frame(width: 300, height: 5)
                .foregroundColor(.red)
                .rotationEffect(.degrees(-25))
            Rectangle()
                .frame(width: 300, height: 5)
                .foregroundColor(.red)
                .rotationEffect(.degrees(25))
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
