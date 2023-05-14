//
//  ChatView.swift
//  Clubs
//
//  Created by Yaroslav Krasnokutskiy on 14.4.23..
//

import SwiftUI

struct ChatView: View {
    let constants = Constants()
    var body: some View {
        ScrollView {
            VStack(spacing: 3) {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: 80).foregroundColor(.white).opacity(0)
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
        .background(Rectangle().fill(constants.gradient)).ignoresSafeArea()
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
