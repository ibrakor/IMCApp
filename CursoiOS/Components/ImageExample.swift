//
//  ImageExample.swift
//  CursoiOS
//
//  Created by Brahim Korsan El Ghabi on 11/8/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        VStack {
            Image("kotlin").resizable().scaledToFill().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Image(systemName: "sun.max.trianglebadge.exclamationmark").resizable().frame(width: 50, height: 50).scaledToFill()
        }
        
    }
}

#Preview {
    ImageExample()
}
