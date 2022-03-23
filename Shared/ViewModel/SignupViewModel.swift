//
//  SignupViewModel.swift
//  swiftUI_Task_2
//
//  Created by Prasannakumar Manikandan on 23/03/22.
//

import SwiftUI

class SignupViewModel: ObservableObject {
    
    @Published var userEmail = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
}
