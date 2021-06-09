//
//  TabBarNavigationView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 9/6/21.
//

import SwiftUI

struct TabBarNavigationView: View {
    var body: some View {
        TabView {
            ToggleView().tabItem {
                Image(systemName: "switch.2")
                Text("Toggle")
            }
            ActivityView().tabItem {
                Image(systemName: "slowmo")
                Text("Activity")
            }
        }
        .accentColor(.red)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarNavigationView()
    }
}
