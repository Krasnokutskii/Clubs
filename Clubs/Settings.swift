//
//  Settings.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 14.4.23..
//

import Foundation

class SettingVM: ObservableObject{
    @Published var settings = [
    Setting(name: "Dark Mode", isActive: false),
    Setting(name: "Default Settings", isActive: true),
    Setting(name: "Most Relevant Feed", isActive: true)
    ]
}

struct Setting: Hashable {
    let name: String
    let isActive: Bool
}
