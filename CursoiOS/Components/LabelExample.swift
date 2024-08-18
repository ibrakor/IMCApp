//
//  LabelExample.swift
//  CursoiOS
//
//  Created by Brahim Korsan El Ghabi on 11/8/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label(
            title: { Text("Alerta por muxo caloo") },
            icon: { Image(systemName: "sun.max.trianglebadge.exclamationmark") }
        )
    }
}

#Preview {
    LabelExample()
}
