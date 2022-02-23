//
//  STExploreView.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 23/02/22.
//

import SwiftUI

struct STExploreView: View {
    
    @Environment(\.dismiss) private var dismiss
    var commonFunction = CommonFunction()
    var recipeIndex: Int
    @EnvironmentObject var recipeAvailable: RecipesDetails
    @State private var columns: [GridItem] = Array(repeating: .init(.flexible()), count: UIDevice.current.userInterfaceIdiom == .pad ? 4 : 2)
    
    init(recipeIndex: Int) {
        commonFunction.customizeNavigationBar()
        self.recipeIndex = recipeIndex
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 20)
            Text(recipeAvailable.recipesDetails[recipeIndex].recipeCategory)
                .font(.custom("Poppins-Bold", size: 20))
            Spacer().frame(height: 20)
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<recipeAvailable.recipesDetails[recipeIndex].dishList.count) { dishIndex in
                        NavigationLink(destination: STDishDetailsView()) {
                            STExploreCellView(dish: recipeAvailable.recipesDetails[recipeIndex].dishList[dishIndex])
                        }
                    }
                }
                Spacer().frame(height: 20)
                ExploreFavoritesView()
            }
            Spacer()
        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
            .navigationTitle("Explore")
            .NavigationViewModifiers()
            .navigationBarItems(leading: Button(action: {dismiss()}) {
                NavigationLeftViewButton()
            }, trailing: Button(action: {}) {
                NavigationRightViewButton()
            })
    }
}

struct STExploreView_Previews: PreviewProvider {
    static var previews: some View {
        STExploreView(recipeIndex: 0).environmentObject(RecipesDetails())
    }
}
