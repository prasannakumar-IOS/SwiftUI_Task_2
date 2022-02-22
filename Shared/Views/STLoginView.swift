//
//  ContentView.swift
//  Shared
//
//  Created by Prasannakumar Manikandan on 18/02/22.
//

import SwiftUI

struct STLoginView: View {
    
    @State var userEmail: String = ""
    @State var userPassword: String = ""
    @State private var isRecipeViewOk = false
    
    var body: some View {
        NavigationView {
        ZStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Image("STLoginPageImage")
                        .resizable()
                        .frame(height: UIScreen.main.bounds.height/2)
                        .ignoresSafeArea()
                    Group {
                        Text(logIn)
                            .font(.custom("Poppins-Bold", size: 35))
                            .padding(.top, -60)
                        Spacer().frame(height: 38)
                        LoginTitleCustomViews(titleText: emailAddress)
                        Spacer().frame(height: 11)
                        LoginTextFieldCustomViews(placeHolder: email, userEmail: $userEmail)
                        Divider()
                        Spacer().frame(height: 24)
                        LoginTitleCustomViews(titleText: passwordBold)
                        LoginTextFieldCustomViews(placeHolder: password, userEmail: $userPassword)
                        Divider()
                    }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                }
                VStack {
                    Group {
                        Spacer().frame(height: 26)
                        Button(action: {}) {
                            LoginButtonTextCustomViews(titleText: forgetPasswordText)
                        }
                        Spacer().frame(height: 21)
                        NavigationLink(destination: RecipesView(), isActive: $isRecipeViewOk) {
                            Button(action: {isRecipeViewOk = true}) {
                                Text(logIn)
                                    .font(.custom("STLoginTextFont", size: 25))
                                    .foregroundColor(.black)
                            }.LoginButtonModifiers()
                        }
                        Spacer().frame(height: 35)
                        HStack {
                            LoginLargeTitleCustomViews(titleText: newAccountText)
                            Button(action: {}) {
                                LoginButtonTextCustomViews(titleText: createAccountText)
                            }
                        }
                    }
                }
                Spacer()
            }.ignoresSafeArea()
        }
        }.navigationViewStyle(StackNavigationViewStyle())
}
}

struct STLoginView_Previews: PreviewProvider {
    static var previews: some View {
        STLoginView()
            .previewInterfaceOrientation(.portrait)
    }
}
