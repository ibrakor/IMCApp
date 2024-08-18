//
//  TextFieldExample.swift
//  CursoiOS
//
//  Created by Brahim Korsan El Ghabi on 11/8/24.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Escribe tu nombre", text: $email)
                .padding(16)
                .background(.gray.opacity(0.3))
                .cornerRadius(16)
                .keyboardType(.emailAddress)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo es \(newValue)")
            }
            SecureField("Escribe tu passcode", text: $password)
                .padding(16)
                .background(.gray.opacity(0.3))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: password) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo es \(newValue)")
            }
        }
    }
    
}

#Preview {
    TextFieldExample()
}
