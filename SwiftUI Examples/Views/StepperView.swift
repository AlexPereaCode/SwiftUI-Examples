//
//  StepperView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 5/6/21.
//

import SwiftUI

struct StepperView: View {
    
    @State var bananasCounter: Int = 0
    @State var eggsCounter: Int = 0
    @State var applesCounter: Int = 0
    
    var body: some View {
        Form {
            // With range limited
            Stepper("\(bananasCounter) Bananas", value: $bananasCounter, in: 0...10)
            
            // With range limited and steps
            Stepper("\(eggsCounter) Eggs", value: $eggsCounter, in: 0...120, step: 6)
            
            // Without range and limit
            Stepper("\(applesCounter) Apples") {
                applesCounter += 1
            } onDecrement: {
                applesCounter -= 1
            }
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
