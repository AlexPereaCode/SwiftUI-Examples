//
//  TapGestureView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 11/6/21.
//

import SwiftUI

struct TapGestureView: View {
    var body: some View {
        
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(.red)
            .onTapGesture {
                print("Red Circle Tapped")
            }
        // Tap 2 Times
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(.orange)
            .onTapGesture(count: 2) {
                print("Orange Circle Tapped")
            }
        // Tap 3 Times
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(.green)
            .onTapGesture(count: 3) {
                print("Green Circle Tapped")
            }
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
