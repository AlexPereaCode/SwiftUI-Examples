//
//  ButtonView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 1/6/21.
//

import SwiftUI

struct ButtonView: View {
    
    @State var backgroundColor: Color = .green
    @State var backgroundColor2: Color = .blue
    
    var body: some View {
        VStack {
            Button(action: {
                backgroundColor = backgroundColor == .green ? .red : .green
            }, label: {
                Text("Press Me")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .background(backgroundColor)
                    .cornerRadius(8)
                    .shadow(radius: 8)
            })
            .padding(30)
            
            Button(action: {
                backgroundColor2 = backgroundColor2 == .blue ? .red : .blue
            }, label: {
                Circle()
                    .fill(backgroundColor2)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 8)
                    .overlay(
                        Image(systemName: "calendar")
                            .foregroundColor(.white)
                            .font(.system(size: 70))
                    )
            })
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
