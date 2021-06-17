//
//  ContentView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 31/5/21.
//

import SwiftUI

struct ContentView: View {
    
    let factoryViews = ExampleFactoryViews()
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Basics")) {
                    ForEach(ExamplesData.getBasicExamples(), id: \.type) { item in
                        NavigationLink(destination: factoryViews.getDestinationView(type: item.type)) {
                            Label(item.type.rawValue, systemImage: item.imageName)
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("SwiftUI Examples")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
