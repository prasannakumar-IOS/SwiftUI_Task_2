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

//struct customViews_Previews: PreviewProvider {
//    static var previews: some View {
//        customViews()
//    }
//}
