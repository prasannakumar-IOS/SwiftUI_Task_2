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

struct NavigationViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
    }
}


extension View {
    
    func LoginButtonModifiers() -> some View {
        modifier(LoginButtonModifier())
    }
    func NavigationViewModifiers() -> some View {
        modifier(NavigationViewModifier())
    }
}

//struct Modifiers_Previews: PreviewProvider {
//    static var previews: some View {
//        Modifiers()
//    }
//}
