//
//  ToggleView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 5/6/21.
//

import SwiftUI

struct ToggleView: View {
    
    @State var isOn = Bool()
    
    var body: some View {
        Form {
            Toggle("Show Notifications", isOn: $isOn)
            Text("Notifications activated: \(isOn.description.capitalized)")
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
