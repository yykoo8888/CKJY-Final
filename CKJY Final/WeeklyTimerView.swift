//
//  WeeklyTimerView.swift
//  CKJY Final
//
//  Created by Celine Quek on 18/11/23.
//

import SwiftUI

struct WeeklyTimerView: View {
    // Key for UserDefaults
    let lastActionDateKey = "lastActionDate"

    var body: some View {
        Text("Your main content goes here")
            .onAppear {
                performActionIfNeeded()
            }
    }

    func performActionIfNeeded() {
        let calendar = Calendar.current
        let now = Date()

        // Check if today is Monday
        if calendar.component(.weekday, from: now) == 2 {
            // Perform your action here
            print("Action performed on Monday!")

            // Update UserDefaults with the current date
            UserDefaults.standard.set(now, forKey: lastActionDateKey)
        }
    }
}

#Preview {
    WeeklyTimerView()
}
