//
//  DragGestureView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 11/6/21.
//

import SwiftUI

struct DragGestureView: View {
    
    @State var dragOffset: CGSize = .zero
    @State var circleColor: Color = .red
    @State var text: String = "Drag Circle"
    
    var body: some View {
        Text(text)
            .fontWeight(.heavy)
            .font(.title)
            .foregroundColor(.black)
        Circle()
            .foregroundColor(circleColor)
            .frame(width: 150, height: 150)
            .offset(x: dragOffset.width, y: dragOffset.height)
            .gesture(
                DragGesture()
                    .onChanged({ (value) in
                        dragOffset = value.translation
                        circleColor = .green
                        text = "Is Dragging"
                    })
                    .onEnded({ (value) in
                        withAnimation(.spring()) {
                            dragOffset = .zero
                            circleColor = .red
                            text = "Drag Circle"
                        }
                    })
            )
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
