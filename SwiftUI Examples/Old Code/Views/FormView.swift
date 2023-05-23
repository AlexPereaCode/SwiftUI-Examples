//
//  FormView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 9/6/21.
//

import SwiftUI

struct FormView: View {
    
    @State var name = ""
    @State var age = ""
    @State var gifEnabled = false
    @State var username = ""
    @State var email = ""
    
    var body: some View {
        Form {
            Section(header: Text("Personal information")) {
                TextField("Name:", text: $name)
                    .keyboardType(.default)
                TextField("Age:", text: $age)
                    .keyboardType(.numberPad)
                Toggle("GIF", isOn: $gifEnabled)
            }
            
            Section(header: Text("Account"),
                    footer:
                        HStack {
                            Spacer()
                            Label("Version 4.2", systemImage: "iphone")
                            Spacer()
                        }
                    ) {
                TextField("Username:", text: $username)
                    .keyboardType(.default)
                TextField("Email:", text: $email)
                    .keyboardType(.emailAddress)
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
