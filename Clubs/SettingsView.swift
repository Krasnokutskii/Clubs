//
//  SettingsView.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 14.4.23..
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = SettingVM()
    @State var setting1 = false
    @State var setting2 = false
    @State var setting3 = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    ForEach(viewModel.settings, id: \.self) { setting in
                        Toggle(isOn: $setting1) {
                            Text(setting.name)
                        }
                    }
                }, header: {
                    Text("Header")
                }, footer: {
                    Text("Footer")
                })
                Section(content: {
                    ForEach(viewModel.settings, id: \.self) { setting in
                        Toggle(isOn: $setting2) {
                            Text(setting.name)
                        }
                    }
                }, header: {
                    Text("Header")
                }, footer: {
                    Text("Footer")
                })
                Section(content: {
                    ForEach(viewModel.settings, id: \.self) { setting in
                        Toggle(isOn: $setting3) {
                            Text(setting.name)
                        }
                    }
                }, header: {
                    Text("Header")
                }, footer: {
                    Text("Footer")
                })
            }.navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
