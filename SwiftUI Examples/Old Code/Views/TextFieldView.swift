//
//  TextFieldView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 3/6/21.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(10)
                .font(.headline)
                .background(Color.black.opacity(0.1))
                .foregroundColor(.black)
                .cornerRadius(6)
                .padding(.horizontal, 30)
                .padding(.top, 30)
                .onChange(of: email, perform: { value in
                    print("Email = \(value)")
                })
            
            SecureField("Password", text: $password)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(10)
                .font(.headline)
                .background(Color.black.opacity(0.1))
                .foregroundColor(.black)
                .cornerRadius(6)
                .padding(.horizontal, 30)
                .padding(.top, 10)
                .onChange(of: password, perform: { value in
                    print("Password = \(value)")
                })
            
            Spacer()
        }
        
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
