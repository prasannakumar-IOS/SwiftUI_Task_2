//
//  STDishDetailsView.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 23/02/22.
//

import SwiftUI

struct STDishDetailsView: View {
    
    var body: some View {
            VStack {
                Image("R4")
                    .resizable()
                    .frame(height: UIScreen.main.bounds.height/2.3)
                    .ignoresSafeArea()
                    .overlay(alignment: .bottomTrailing) {
                        ShareButtonsView()
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 100, trailing: 30))
                    }
                    .overlay(alignment: .topLeading) {
                        BackButtonView()
                            .padding(EdgeInsets(top: 10, leading: 25, bottom: 0, trailing: 0))
                    }
                DishDetailsView()
                    .padding(EdgeInsets(top: -100, leading: 0, bottom: 0, trailing: 0))
                Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct STDishDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        STDishDetailsView()
    }
}
