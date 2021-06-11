//
//  ContextMenuView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 11/6/21.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Text("Long press to show context menu")
            .padding()
            .contextMenu(
                ContextMenu(menuItems: {
                    Button(action: {
                        print("Label option pressed")
                    }, label: {
                        Label("Label", systemImage: "textformat")
                    })
                    Button(action: {
                        print("Button option pressed")
                    }, label: {
                        Label("Button", systemImage: "capsule")
                    })
                    Button(action: {
                        print("Toggle option pressed")
                    }, label: {
                        Label("Toggle", systemImage: "switch.2")
                    })
                })
            )
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
