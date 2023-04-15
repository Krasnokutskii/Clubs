//
//  ChatView.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 14.4.23..
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 3) {
                ForEach(0..<30) {index in
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke()
                            HStack {
                                Image("avatar")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                VStack(alignment: .leading) {
                                    Text("Chat \(index)")
                                    Text("Some long text")
                                }
                                Spacer()
                            }
                        }
                        .frame(height: 60)
                        .padding(5)
                    }
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
