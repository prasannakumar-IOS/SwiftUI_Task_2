//
//  RecipesDetails.swift
//  swiftUI_Task_2 (iOS)
//
//  Created by Prasannakumar Manikandan on 22/02/22.
//

import SwiftUI

class RecipesDetails: ObservableObject {
    @Published var recipesDetails: [Recipes] = [Recipes(recipeName: "Orange & Honey", recipeTimeTaken: "25 min", recipeReviews: "4.6", recipeCategory: "Breakfast", recipeThumbNail: UIImage(named: "STRecipesImage") ?? UIImage()), Recipes(recipeName: "Ort & Coconut", recipeTimeTaken: "25 min", recipeReviews: "5.6", recipeCategory: "Lunch", recipeThumbNail: UIImage(named: "STRecipesImage(1)") ?? UIImage())]
}

struct Recipes: Hashable {
    var recipeName: String
    var recipeTimeTaken: String
    var recipeReviews: String
    var recipeCategory: String
    var recipeThumbNail: UIImage
}
