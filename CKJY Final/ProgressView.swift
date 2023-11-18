//
//  ProgressView.swift
//  CKJY Final
//
//  Created by Celine Quek on 18/11/23.
//

import SwiftUI

struct ProgressView: View {
    
    @State private var leaves = 0
    
    var body: some View {
        VStack {
            HStack {
                Stepper("\(leaves) times rickrolled", value: $leaves)
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
