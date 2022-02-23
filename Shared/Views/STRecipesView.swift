//
//  RecipesView.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 21/02/22.
//

import SwiftUI

struct RecipesView: View {
    
    @State private var searchText = ""
    @State private var selectedIndex = 0
    @State private var columns: [GridItem] = Array(repeating: .init(.flexible()), count: UIDevice.current.userInterfaceIdiom == .pad ? 4 : 2)
    @EnvironmentObject var recipeAvailable: RecipesDetails
    @Environment(\.dismiss) private var dismiss
    var commonFunction = CommonFunction()

    init() {
        commonFunction.customizeNavigationBar()
    }
    
    var body: some View {
        VStack {
            Spacer().frame(height: 25)
            RecipesSearchBarView(searchText: $searchText)
            Spacer().frame(height: 25)
            RecipesSegmentControllerView()
            Spacer().frame(height: 25)
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(0..<recipeAvailable.recipesDetails.count, id: \.self) { recipes in
                        NavigationLink(destination: STExploreView(recipeIndex: recipes)) {
                            STRecipesCellView(recipes: recipeAvailable.recipesDetails[recipes], indexCount: recipes)
                        }
                    }
                }
            }
            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        .navigationTitle("Recipes")
        .NavigationViewModifiers()
        .navigationBarItems(leading: Button(action: {dismiss()}) {
            NavigationLeftViewButton()
        }, trailing: Button(action: {}) {
            NavigationRightViewButton()
        })
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
