//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Emine CETINKAYA on 23.01.2024.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
       case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool //Kullanıcıya text i doldurmadığı için bir hata mesajı vermek yerine, texte gelen imleçle doğrudan uyarabilir.
    @State private  var username: String = ""
//    @FocusState private var passwordInFocus: Bool
    @State private  var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    
   
    
    var body: some View {
        VStack(spacing: 30){
            TextField("Add your name here...", text: $username )
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password )
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            
            Button("SIGN UP 🚀"){
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                }else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                    
                }else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
//            
//            Button("TOGGLE FOCUS STATE"){
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
        }
        
    }
//}

#Preview {
    FocusStateBootcamp()
}
