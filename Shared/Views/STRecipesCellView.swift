//
//  STRecipesCellView.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 23/02/22.
//

import SwiftUI

struct STRecipesCellView: View {
    
    var recipes: Recipes
    var indexCount: Int
    var recipesViewModel = RecipesViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: recipes.recipeThumbNail)
                .resizable()
                .frame(height: recipesViewModel.customGridIndex(index: Float(indexCount)) ? 250 : 200)
                .cornerRadius(20)
                .overlay(alignment: .topLeading) {
                    RecipeTimeTakenView(recipeTimeTaken: recipes.recipeTimeTaken)
                }
                .overlay(alignment: .bottomTrailing) {
                    RecipeRatingView(recipeRating: recipes.recipeReviews)
                }
            Spacer().frame(height: 15)
            Text(recipes.recipeName)
                .foregroundColor(.black)
                .font(.custom("Poppins-Bold", size: 20))
                .lineLimit(1)
                .truncationMode(.tail)
            Text(recipes.recipeCategory)
                .foregroundColor(.gray).opacity(0.6)
                .font(.custom("Poppins-Bold", size: 15))
            Spacer()
        }
    }
}

