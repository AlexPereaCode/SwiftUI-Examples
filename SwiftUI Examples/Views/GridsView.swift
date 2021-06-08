//
//  GridsView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 8/6/21.
//

import SwiftUI

struct GridsView: View {
    var body: some View {
        
        let elements = 1...100
        let gridItems = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))]
        
        // Vertical grid
        ScrollView {
            LazyVGrid(columns: gridItems) {
                ForEach(elements, id: \.self) { element in
                    VStack {
                        Circle()
                            .frame(height: 20)
                        Text("\(element)")
                    }
                }
            }
        }
        
        // Horizontal grid
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems) {
                ForEach(elements, id: \.self) { element in
                    VStack {
                        Circle()
                            .frame(height: 20)
                        Text("\(element)")
                    }
                    .padding()
                }
            }
        }
    }
}

struct GridsView_Previews: PreviewProvider {
    static var previews: some View {
        GridsView()
    }
}
