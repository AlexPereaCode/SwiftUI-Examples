//
//  DatePickerView.swift
//  SwiftUI Examples
//
//  Created by Alejandro Perea Navarrete on 3/6/21.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var selectedDate = Date()
    
    var body: some View {
        Form {
            Text(selectedDate, style: .date)
                .bold()
            
            // Standard
            DatePicker("Select", selection: $selectedDate)
            
            // Wheel
            DatePicker("", selection: $selectedDate)
                .datePickerStyle(WheelDatePickerStyle())
            
            // Graphical, limited to the future
            DatePicker("", selection: $selectedDate, in: Date()..., displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
        }
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
