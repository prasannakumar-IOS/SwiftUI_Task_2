//
//  RecipesViewModel.swift
//  swiftUI_Task_2 (iOS)
//
//  Created by Prasannakumar Manikandan on 22/02/22.
//

import SwiftUI

class RecipesViewModel {
    
    func customGridIndex(index: Float) -> Bool {
        let indexes = index/2
        let recipesIndex = Int(floor(indexes))
        if recipesIndex % 2 == 0 {
            if indexes.rounded(.up) == indexes.rounded(.down) {
                return true
            } else {
                return false
            }
        } else {
            if indexes.rounded(.up) == indexes.rounded(.down) {
                return false
            } else {
                return true
            }
        }
    }
}
