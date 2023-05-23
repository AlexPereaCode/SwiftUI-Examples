//
//  TextEditorView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 3/6/21.
//

import SwiftUI

struct TextEditorView: View {
    
    @State var text: String = "Placeholder..."
    @State var counter: Int = 0
    let charLimit: Int = 50
    
    var body: some View {
        TextEditor(text: $text)
            .font(.title)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .padding()
            .onChange(of: text, perform: { value in
                counter = value.count
            })
        Text("\(counter)")
            .foregroundColor(counter <= charLimit ? .green : .red)
            .font(.headline)
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
