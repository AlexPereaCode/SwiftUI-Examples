//
//  ActivityView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 5/6/21.
//

import SwiftUI

struct ActivityView: View {
    
    @State var isWaiting: Bool = true
    @State var timeRemaining = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            if isWaiting {
                // ProgressView Circular
                ProgressView("Wait \(timeRemaining) seconds...")
                    .scaleEffect(1.5)
                    .onReceive(timer) { _ in
                        if timeRemaining > 0 {
                            timeRemaining -= 1
                        } else {
                            isWaiting.toggle()
                        }
                    }
                // ProgressView Bar
                ProgressView(value: Float(timeRemaining) / 10).padding(.top, 30)
            } else {
                Text("Is Loaded :)")
            }
            
            // Reset Button
            Button(action: {
                isWaiting = true
                timeRemaining = 10
            }, label: {
                Text("Reset")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            })
            .padding(30)
        }.padding(.horizontal, 20)
        
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
