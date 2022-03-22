//
//  RecipesDetails.swift
//  swiftUI_Task_2 (iOS)
//
//  Created by Prasannakumar Manikandan on 22/02/22.
//

import SwiftUI

class RecipesDetails: ObservableObject {
    @Published var recipesDetails: [Recipes] = [Recipes(recipeName: "Orange & Honey", recipeTimeTaken: "25 min", recipeReviews: "4.6", recipeCategory: "Breakfast", recipeThumbNail: UIImage(named: "STRecipesImage") ?? UIImage(), dishList: [exploreRecipes(dishTimeTaken: "24 min", dishReviews: "5.7", dishThumbNail: UIImage(named: "STRecipesImage") ?? UIImage()), exploreRecipes(dishTimeTaken: "12 min", dishReviews: "3.7", dishThumbNail: UIImage(named: "S1") ?? UIImage()), exploreRecipes(dishTimeTaken: "2 min", dishReviews: "2.0", dishThumbNail: UIImage(named: "S2") ?? UIImage()), exploreRecipes(dishTimeTaken: "20 min", dishReviews: "2.1", dishThumbNail: UIImage(named: "S3") ?? UIImage())]), Recipes(recipeName: "Ort & Coconut", recipeTimeTaken: "25 min", recipeReviews: "5.6", recipeCategory: "Lunch", recipeThumbNail: UIImage(named: "STRecipesImage(1)") ?? UIImage(), dishList: [exploreRecipes(dishTimeTaken: "23 min", dishReviews: "4.7", dishThumbNail: UIImage(named: "STRecipesImage") ?? UIImage())]), Recipes(recipeName: "Orange & Honey", recipeTimeTaken: "25 min", recipeReviews: "4.6", recipeCategory: "Breakfast", recipeThumbNail: UIImage(named: "STRecipesImage(2)") ?? UIImage(), dishList: [exploreRecipes(dishTimeTaken: "22 min", dishReviews: "2.7", dishThumbNail: UIImage(named: "STRecipesImage(1)") ?? UIImage())]), Recipes(recipeName: "Orange & Honey", recipeTimeTaken: "25 min", recipeReviews: "4.6", recipeCategory: "Breakfast", recipeThumbNail: UIImage(named: "STRecipesImage(3)") ?? UIImage(), dishList: [exploreRecipes(dishTimeTaken: "21 min", dishReviews: "2.2", dishThumbNail: UIImage(named: "STRecipesImage(1)") ?? UIImage())])]
}

struct Recipes: Hashable {
    var recipeName: String
    var recipeTimeTaken: String
    var recipeReviews: String
    var recipeCategory: String
    var recipeThumbNail: UIImage
    var dishList: [exploreRecipes]
}

struct exploreRecipes: Hashable {
    var dishTimeTaken: String
    var dishReviews: String
    var dishThumbNail: UIImage

}
