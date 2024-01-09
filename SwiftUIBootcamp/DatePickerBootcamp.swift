//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 9.01.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018))! ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack{
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            //       DatePicker("Select a Date", selection: $selectedDate)
                    
            //        DatePicker("Select a date", selection: $selectedDate,
            //                   displayedComponents: [.hourAndMinute])
                    
                    DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                        .accentColor(Color.red)
                        .datePickerStyle(
                            CompactDatePickerStyle()
            //                GraphicalDatePickerStyle()
            //                WheelDatePickerStyle()
                        
                        )
            
        }

    }
}

#Preview {
    DatePickerBootcamp()
}
