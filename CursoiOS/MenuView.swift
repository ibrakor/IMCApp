//
//  MenuView.swift
//  CursoiOS
//
//  Created by Brahim Korsan El Ghabi on 11/8/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: IMCScreen()){
                    Text("IMC Calculator")

                }

                Text("Hello Spain")
                Text("Hello Spain")
                Text("Hello Spain")
            }
        }
    }
}

#Preview {
    MenuView()
}
