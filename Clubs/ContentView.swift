//
//  ContentView.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 14.4.23..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
//            CalendarView()
//                .badge("New")
//                .tabItem {
//                    Label("Calendar", systemImage:"calendar")
//                }
            
            ChatView()
                .badge("1")
                .tabItem {
                    Label("Chats", systemImage: "message.fill")
                }
                .tabViewStyle(.automatic)
            
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "scroll")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
            .previewDisplayName("Main View")
            
    }
}
