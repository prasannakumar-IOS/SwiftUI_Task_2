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
    @StateObject var recipesAvailable = RecipesDetails()
    @State var indexCount: Int = 0
    var recipesViewModel = RecipesViewModel()

    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.titleTextAttributes = [
            .font : UIFont(name: "Poppins-Bold" ,size: 30) ?? UIFont.systemFont(ofSize: 30),
            NSAttributedString.Key.foregroundColor : UIColor.black
        ]
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        VStack {
            Spacer().frame(height: 25)
            RecipesSearchBarView(searchText: $searchText)
            Spacer().frame(height: 25)
            RecipesSegmentControllerView()
            Spacer().frame(height: 25)
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<recipesAvailable.recipesDetails.count, id: \.self) { recipes in
                        RecipesGridView(recipes: recipesAvailable.recipesDetails[recipes], indexCount: recipes)
//                        VStack {
//                            ZStack {
//                                Image(uiImage: recipes.recipeThumbNail)
//                                    .resizable()
//                                    .frame(height: 100)
//                                    .cornerRadius(20)
//
//                            }
//                        }
                    }
                }
            }
            Spacer()
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        .navigationTitle("Recipes")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {}) {
            Image("STMenuBarButton")
                .resizable()
                .frame(width: 40, height: 40)
        }, trailing: Button(action: {}) {
            Image("STDefaultProfilePicture")
                .resizable()
                .frame(width: 40, height: 33)
                .cornerRadius(20)
        })
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
