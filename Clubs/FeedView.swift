//
//  FeedView.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 14.4.23..
//

import SwiftUI

struct FeedView: View {
    let colors: [Color] = [
        .purple,
        .red,
        .green,
        .blue,
        .brown,
        .yellow,
        .cyan
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(colors,id: \.self) { color in
                    VStack{
                        HStack{
                            Text("Here we have some info here. Here we have some info here.Here we have some info here.Here we have some info here")
                                .foregroundColor(.secondary)
                            Spacer()
                        }
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(color)
                            .frame(height: 350)
                    }
                    .padding(10)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
