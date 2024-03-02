//
//  AFButtons.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 3/1/24.
//

import SwiftUI

struct AFButtons: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 280, height: 50)
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AFButtons(title: "Test Title")
}
