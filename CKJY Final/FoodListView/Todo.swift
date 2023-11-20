//
//  Todo.swift
//  CKJY Final
//
//  Created by Celine Quek on 20/11/23.
//

import Foundation

struct Todo: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
    
}
