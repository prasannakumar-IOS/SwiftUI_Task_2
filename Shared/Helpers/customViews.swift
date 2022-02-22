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
            .font(.custom("Poppins-Bold", size: 12))
            .foregroundColor(Color.STEmailTextColor)
    }
}

struct LoginTextFieldCustomViews: View {
    
    var placeHolder: String
    @Binding var userEmail: String
    
    var body: some View {
        TextField(placeHolder, text: $userEmail)
            .font(.custom("Poppins-Bold", size: 14))
    }
}

struct LoginButtonTextCustomViews: View {
    
    var titleText: String
    
    var body: some View {
        Text(titleText)
            .foregroundColor(Color.STForgetPasswordColor)
            .font(.custom("Poppins-Bold", size: 15))
    }
}

struct LoginLargeTitleCustomViews: View {
    
    var titleText: String
    
    var body: some View {
        Text(titleText)
            .font(.custom("Poppins-Bold", size: 15))
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
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray).blur(radius: 1))
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
                                .font(.custom("Poppins-Bold", size: 20))
                                .opacity(selectedIndex == index ? 1 : 0.4)
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

struct RecipesGridView: View {
    
    var recipes: Recipes
    var indexCount: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing) {
                let _ = print(indexCount)
                Image(uiImage: recipes.recipeThumbNail)
                    .resizable()
                    .frame(height: indexCount % 2 == 0 ? 250 : 200)
                    .cornerRadius(20)
                Button(action: {}) {
                    HStack {
                        Image("STStarImage")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.leading, 10)
                        Spacer().frame(width: 3)
                        Text(recipes.recipeReviews)
                            .foregroundColor(.black)
                            .font(.custom("Poppins-Bold", size: 20))
                            .frame(alignment: .bottomTrailing)
                            .padding(.trailing, 10)
                    }
                    .background(Color.green)
                    .cornerRadius(10)
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 15))
                //                Button(action: {}) {
                //                    HStack {
                //                        Image("STClockImage")
                //                            .resizable()
                //                            .frame(width: 15, height: 15)
                //                        Text(recipes.recipeTimeTaken)
                //                            .font(.custom("Poppins-Bold", size: 15))
                //                    }
                //                }
                
            }
            Spacer().frame(height: 15)
            Text(recipes.recipeName)
                .foregroundColor(.black)
                .font(.custom("Poppins-Bold", size: 20))
                .lineLimit(1)
                .truncationMode(.tail)
            Text(recipes.recipeCategory)
                .foregroundColor(.gray)
                .font(.custom("Poppins-Bold", size: 15))
        }
    }
}

