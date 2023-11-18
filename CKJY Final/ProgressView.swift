//
//  ProgressView.swift
//  CKJY Final
//
//  Created by Celine Quek on 18/11/23.
//

import SwiftUI

struct ProgressView: View {
    
    @State var leaves = 0
    @State var leafGoal = 10
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke( // 1
                        Color.pink.opacity(0.5),
                        lineWidth: 30
                    )
                Circle() // 2
                    .trim(from: 0, to: CGFloat(leaves) / CGFloat(leafGoal)) // 1
                    .stroke(Color.pink,
                            style: StrokeStyle(
                                lineWidth: 30,
                                lineCap: .round
                            )
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut, value: CGFloat(leaves) / CGFloat(leafGoal))
            }
                .frame(width: 200, height: 200)
            HStack {
                Stepper("\(leaves)", value: $leaves)
                    .padding(20)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(30)
                Stepper("\(leafGoal)", value: $leafGoal)
                    .padding(20)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(30)
            }
            .padding()
        }
    }
}

#Preview {
    ProgressView()
}
