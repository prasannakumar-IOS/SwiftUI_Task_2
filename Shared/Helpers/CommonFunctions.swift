//
//  CommonFunctions.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 23/02/22.
//

import SwiftUI

class CommonFunction {
    
    func customizeNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.titleTextAttributes = [
            .font : UIFont(name: kRecipesFont ,size: 30) ?? UIFont.systemFont(ofSize: 30),
            NSAttributedString.Key.foregroundColor : UIColor.black
        ]
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
    }
}
