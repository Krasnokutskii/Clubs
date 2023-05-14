//
//  SettingsView.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 14.4.23..
//

import SwiftUI

struct SettingsView: View {
    @State var settings = Settings()
    let gradient = LinearGradient(colors: [.pink, .blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 0){
                    Form {
                        ZStack {
                            Rectangle()
                                .fill(gradient)
                                .padding(-20)
                            HStack {
                                Spacer()
                                Image("avatar")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 180, height: 180)
                                    .clipShape(RoundedRectangle(cornerRadius: 90))
                                    .onTapGesture {
                                        print("hi")
                                    }
                                Spacer()
                            }
                        }
                        Section(content: {
                            TextField("First Name", text: $settings.firstName)
                            TextField("Last Name", text: $settings.lastName)
                            DatePicker("Birthday", selection: $settings.birthday, displayedComponents: .date)
                        }, header: {
                            Text("Accaunt")
                        })
                        Section(content: {
                            TextField("NickName", text: $settings.nickName)
                            Toggle("Use nickname", isOn: $settings.setting2)
                        },footer: {
                            Text("When on, people will see your nickname instead of real name")
                        })
                        Section(content: {
                            Toggle("Dark mode", isOn: $settings.darkMode)
                            Link("Term of service", destination: URL(string: "https://www.apple.com")!)
                                .tint(.red)
                        },
                        header: {
                            Text("Actions")
                        })
                    }.navigationTitle("Settings")
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
