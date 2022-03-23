//
//  Modifiers.swift
//  swiftUI_Task_2 (iOS)
//
//  Created by Prasannakumar Manikandan on 18/02/22.
//

import SwiftUI

struct LoginButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 73)
            .background(Color.STForgetPasswordColor)
            .cornerRadius(20)
            .padding(EdgeInsets(top: 0, leading: 35, bottom: 0, trailing: 35))
    }
}

struct SignupButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 45)
            .background(Color.STForgetPasswordColor)
            .cornerRadius(15)
    }
}

struct NavigationViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
    }
}

struct SignupTextModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 18))
    }
}
    
extension View {
    
    func LoginButtonModifiers() -> some View {
        modifier(LoginButtonModifier())
    }
    
    func SignupButtonModifiers() -> some View {
        modifier(SignupButtonModifier())
    }
    
    func NavigationViewModifiers() -> some View {
        modifier(NavigationViewModifier())
    }
    
    func SignupTextModifiers() -> some View {
        modifier(SignupTextModifier())
    }
}
