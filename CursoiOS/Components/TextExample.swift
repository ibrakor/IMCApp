//
//  TextExample.swift
//  CursoiOS
//
//  Created by Brahim Korsan El Ghabi on 11/8/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text("Hola Brahem").font(.headline)
        Text("Hola Custom").font(.system(size: 40, weight: .bold, design: .monospaced))
    }
}

#Preview {
    TextExample()
}
