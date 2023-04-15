//
//  CalendarView.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 15.4.23..
//

import SwiftUI

struct CalendarView: View {
    @State var dataFrame: DataFrame = .week
    let dataFrames: [DataFrame] = [.day,.week,.month]
    var body: some View {
        VStack(spacing: 2){
            Picker("Data Frame", selection: $dataFrame) {
                ForEach(dataFrames, id: \.self) {frame in
                    Text(frame.rawValue)
                }
            }
            .pickerStyle(.segmented)
                switch dataFrame {
                case .day:
                    Color(.blue)
                case .week:
                    Color(.cyan)
                case .month:
                    Color(.purple)
            }
        }
    }
    
    enum DataFrame: String, Hashable {
        case day = "Day"
        case week = "Week"
        case month = "Month"
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
