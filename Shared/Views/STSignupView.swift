//
//  STSignupView.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 23/03/22.
//

import SwiftUI

struct STSignupView: View {
    
    @StateObject private var signupViewModel = SignupViewModel()
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("STSignUpImage")
                .resizable()
                .ignoresSafeArea(.all)
            ScrollView {
                VStack {
                    Spacer().frame(height: 0)
                    Text("Enter Your Details:")
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                    VStack(alignment: .leading) {
                        Group {
                            Spacer().frame(height: 20)
                            Text("Email Address:")
                            Spacer().frame(height: 15)
                            TextField("Email", text: $signupViewModel.userEmail)
                            Spacer().frame(height: 15)
                            Text("Password:")
                            TextField("Password", text: $signupViewModel.password)
                            Spacer().frame(height: 15)
                            Text("Confirm Password:")
                            TextField("Confirm Password", text: $signupViewModel.confirmPassword)
                        }.SignupTextModifiers()
                        Spacer().frame(height: 35)
                        Button(action: {}) {
                            Text("Save")
                                .font(.custom("STLoginTextFont", size: 25))
                                .foregroundColor(.black)
                        }.SignupButtonModifiers()
                    }.padding(.horizontal, 16)
                }
                .textFieldStyle(STSignupTextField())
            }
        }
    }
}

struct STSignupView_Previews: PreviewProvider {
    static var previews: some View {
        STSignupView()
    }
}
