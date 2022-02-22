//
//  swiftUI_Task_2App.swift
//  Shared
//
//  Created by Prasannakumar Manikandan on 18/02/22.
//

import SwiftUI

@main
struct swiftUI_Task_2App: App {
    
    @StateObject var recipesDetails = RecipesDetails()
    
    var body: some Scene {
        WindowGroup {
            STLoginView()
                .environmentObject(recipesDetails)
        }
    }
}
