//
//  customViews.swift
//  swiftUI_Task_2 (iOS)
//
//  Created by Prasannakumar Manikandan on 18/02/22.
//

import SwiftUI

struct LoginTitleCustomViews: View {
    
    var titleText: String
    
    var body: some View {
        Text(titleText)
            .font(.custom(kRecipesFont, size: 12))
            .foregroundColor(Color.STEmailTextColor)
    }
}

struct LoginTextFieldCustomViews: View {
    
    var placeHolder: String
    @Binding var userEmail: String
    
    var body: some View {
        TextField(placeHolder, text: $userEmail)
            .font(.custom(kRecipesFont, size: 14))
    }
}

struct LoginButtonTextCustomViews: View {
    
    var titleText: String
    
    var body: some View {
        Text(titleText)
            .foregroundColor(Color.STForgetPasswordColor)
            .font(.custom(kRecipesFont, size: 15))
    }
}

struct LoginLargeTitleCustomViews: View {
    
    var titleText: String
    
    var body: some View {
        Text(titleText)
            .font(.custom(kRecipesFont, size: 15))
            .foregroundColor(Color.STEmailTextColor)
    }
}

struct RecipesSearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        ZStack(alignment: .trailing) {
            TextField("Search Recipes", text: $searchText)
                .padding()
                .frame(height: 55)
                .textFieldStyle(PlainTextFieldStyle())
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray).blur(radius: 0.7))
            Button(action: {}) {
                Image("STSearchBarIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .frame(width: 45, height: 45)
            .background(Color.orange)
            .cornerRadius(22.5)
            .padding(.trailing, 10)
        }
    }
}

struct RecipesSegmentControllerView: View {
    
    @State var selectedIndex: Int = 0
    @State private var titles = ["All", "Italian", "Asian", "Vegetarian", "Non-Veg"]
    var isiPadView: Bool = UIDevice.current.userInterfaceIdiom == .pad ? true : false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(titles.indices, id: \.self) { index in
                    VStack {
                        Button(action:{ selectedIndex = index }) {
                            Text(titles[index])
                                .font(.custom(kRecipesFont, size: 20))
                                .opacity(selectedIndex == index ? 1 : 0.3)
                        }.foregroundColor(.black)
                        Spacer().frame(height: 5)
                        Spacer()
                            .frame(width: 60, height: 5)
                            .background(selectedIndex == index ? Color.orange : Color.clear)
                    }
                    Spacer().frame(width: 30)
                }
            }
        }
    }
}

struct RecipeTimeTakenView: View {
    
    var recipeTimeTaken: String
    
    var body: some View {
        Label(" \(recipeTimeTaken) ", systemImage: "clock.fill")
            .foregroundColor(.white.opacity(1))
            .frame(height: 30)
            .padding(.horizontal, 5)
            .background(Color.black.opacity(0.4))
            .cornerRadius(15)
            .font(.custom(kRecipesFont, size: 12))
            .padding()
    }
}

struct RecipeRatingView: View {
    
    var recipeRating: String
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Image("STStarImage")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .padding(.leading, 7)
                Spacer().frame(width: 3)
                Text(recipeRating)
                    .foregroundColor(.black)
                    .font(.custom(kRecipesFont, size: 17))
                    .frame(alignment: .bottomTrailing)
                    .padding(.trailing, 7)
            }
            .background(Color.STLoginButtonColor)
            .cornerRadius(10)
        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 15))
    }
}


struct NavigationRightViewButton: View {
    
    var body: some View {
        Image("STDefaultProfilePicture")
            .resizable()
            .frame(width: 40, height: 33)
            .cornerRadius(20)
    }
}

struct NavigationLeftViewButton: View {
    
    var body: some View {
        Image("STMenuBarButton")
            .resizable()
            .frame(width: 40, height: 40)
    }
}

struct ExploreFavoritesView: View {
    
    var favoritesNames = ["Pizza", "Strawberry", "Apple", "Laddu"]
    var favoritesImage = ["R1", "R2", "R4", "R5"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Favourite")
                .font(.custom(kRecipesFont, size: 20))
            Spacer().frame(height: 15)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<favoritesImage.count) { favorites in
                        VStack {
                            Image(favoritesImage[favorites])
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Spacer().frame(height: 5)
                            Text(favoritesNames[favorites])
                                .font(.custom(kRecipesFont, size: 12))
                                .lineLimit(1)
                                .truncationMode(.tail)
                        }
                        Spacer().frame(width: 40)
                    }
                }
            }
        }
    }
}

struct ShareButtonsView: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(Color.black.opacity(0.4))
            .cornerRadius(30)
            Spacer().frame(height: 20)
            Button(action: {}) {
                Image(systemName: "forward.frame.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(Color.black.opacity(0.3))
            .cornerRadius(30)
        }    }
}

struct BackButtonView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {dismiss()}) {
            Image("STBackArrow")
                .resizable()
                .frame(width: 30, height: 30)
        }
        .foregroundColor(.white.opacity(1))
        .frame(width: 60, height: 60)
        .background(Color.STForgetPasswordColor)
        .cornerRadius(30)
    }
}

struct DishDetailsView: View {
    
    var body: some View {
        VStack {
            Group {
                Spacer()
                    .frame(height: 20)
                Spacer()
                    .frame(width: 50, height: 4)
                    .background(Color.gray.opacity(0.3))
                Spacer().frame(height: 15)
                ScrollView {
                    DishTitleRatingView()
                    Spacer().frame(height: 15)
                    NutritionDetailsView()
                    Spacer().frame(height: 20)
                    IngredientsView()
                }
            }.padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25))
            
        }
        .background(Color.white)
        .cornerRadius(60)
    }
}

struct NutritionDetailsView: View {
    
    var rating = ["356", "44.3", "222", "1.4"]
    var categories = ["Calories", "Carbs", "Proteins", "Fat"]
    var categoriesName = ["kcal", "g", "g", "g"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("NUTRITION FACTS")
                .font(.custom(kRecipesFont, size: 15))
                .foregroundColor(.gray.opacity(0.5))
            Spacer().frame(height: 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<categories.count) { category in
                        VStack {
                            Spacer().frame(height: 10)
                            Text(rating[category])
                                .frame(width: 60, height: 60)
                                .background(Color.white)
                                .font(.custom(kRecipesFont, size: 25))
                                .cornerRadius(30)
                                .padding(.horizontal, 10)
                            Spacer().frame(height: 15)
                            Text(categories[category])
                                .font(.custom(kRecipesFont, size: 15))
                            Spacer().frame(height: 8)
                            Text(categoriesName[category])
                                .font(.custom(kRecipesFont, size: 13))
                                .opacity(0.7)
                            Spacer().frame(height: 20)
                        }
                        .background(Color.STLoginButtonColor)
                        .cornerRadius(40)
                        Spacer().frame(width: 15)
                    }
                }
            }
        }
    }
}

struct IngredientsView: View {
    
    var ingredientsImage = ["fruitsImage", "fruitsImage(1)"]
    var ingredientsName = ["Apples", "Orange"]
    var ingredientsSize = ["2x large", "250g"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("INGREDIENTS")
                .font(.custom(kRecipesFont, size: 15))
                .foregroundColor(.gray.opacity(0.5))
            Spacer().frame(height: 20)
            ForEach(0..<ingredientsName.count) { ingredient in
                HStack {
                    Image(ingredientsImage[ingredient])
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(20)
                    Spacer().frame(width: 15)
                    Text(ingredientsName[ingredient])
                        .font(.custom(kRecipesFont, size: 15))
                    Spacer()
                    Text(ingredientsSize[ingredient])
                        .font(.custom(kRecipesFont, size: 15))
                        .foregroundColor(.gray.opacity(0.4))
                }
                Divider()
                
            }
        }
    }
}

struct DishTitleRatingView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Apple curd GT")
                    .font(.custom(kRecipesFont, size: 23))
                Spacer().frame(height: 12)
                Text("Deserts")
                    .font(.custom(kRecipesFont, size: 19))
                    .foregroundColor(.gray.opacity(0.5))
            }
            Spacer()
            Button(action: {}) {
                HStack {
                    Image("STStarImage")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 10)
                    Spacer().frame(width: 3)
                    Text("5.6")
                        .foregroundColor(.black)
                        .font(.custom(kRecipesFont, size: 25))
                        .frame(alignment: .bottomTrailing)
                        .padding(.trailing, 10)
                }
                .background(Color.STLoginButtonColor)
                .cornerRadius(15)
            }
        }
    }
}
