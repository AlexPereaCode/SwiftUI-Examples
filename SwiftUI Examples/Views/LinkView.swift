//
//  LinkView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 5/6/21.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        
        // Link Safari
        Link(destination: URL(string: "https://www.google.com")!, label: {
            Label("Google", systemImage: "gear")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(10)
        })
        
        // Link Settings
        Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
            Label("Settings", systemImage: "gear")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        })
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
