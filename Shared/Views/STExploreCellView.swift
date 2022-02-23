//
//  STExploreCellView.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 23/02/22.
//

import SwiftUI

struct STExploreCellView: View {
    
    var dish: exploreRecipes
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Image(uiImage: dish.dishThumbNail)
                .resizable()
                .frame(height: 230)
                .cornerRadius(20)
            HStack {
                Button(action: {}) {
                    HStack {
                        Image("STStarImage")
                            .resizable()
                            .frame(width: 13, height: 13)
                            .padding(.leading, 7)
                        Spacer().frame(width: 3)
                        Text(dish.dishReviews)
                            .foregroundColor(.black)
                            .font(.custom("Poppins-Bold", size: 15))
                            .frame(alignment: .bottomTrailing)
                            .padding(.trailing, 7)
                    }
                    .background(Color.STLoginButtonColor)
                    .cornerRadius(10)
                }
                Spacer().frame(width: 10)
                Text(dish.dishTimeTaken)
                    .foregroundColor(.black)
                    .font(.custom("Poppins-Bold", size: 15))
            }
        }
    }
}
