//
//  FullScreenView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 10/6/21.
//

import SwiftUI

struct FullScreenView: View {
    
    @State var isFullScreenPresented: Bool = false
    @State var isSheetPresented: Bool = false
    
    var body: some View {
        VStack {
            Button("Present Full Screen") {
                isFullScreenPresented = true
            }
            .padding()
            Button("Present Sheet") {
                isSheetPresented = true
            }
            
            .fullScreenCover(isPresented: $isFullScreenPresented,
                             onDismiss: { isFullScreenPresented = false },
                             content: {
                                ZStack {
                                    Color.blue.ignoresSafeArea()
                                    Button("Dismiss View") {
                                        isFullScreenPresented = false
                                    }
                                    .foregroundColor(.white)
                                }
            })
            
            .sheet(isPresented: $isSheetPresented,
                   onDismiss: { isSheetPresented = false },
                   content: {
                    ZStack {
                        Color.green.ignoresSafeArea()
                        Button("Dismiss View") {
                            isSheetPresented = false
                        }
                        .foregroundColor(.white)
                    }
            })
        }
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenView()
    }
}
