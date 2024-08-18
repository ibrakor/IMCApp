//
//  ButtonExample.swift
//  CursoiOS
//
//  Created by Brahim Korsan El Ghabi on 11/8/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        VStack {
            Button(action: {
                print("ay")
            }) {
                Text("Confirm")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: 100, maxHeight: 44)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
    }
}

struct Counter: View {
    @State var subscribers = 0
    var body: some View {
        Button(action: {
            subscribers += 1
        }) {
            Text("+1")
                .bold()
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: 100, maxHeight: 44)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.horizontal)
        }
        Text("\(subscribers)")
    }
}

#Preview {
    Counter()
}
