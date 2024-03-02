//
//  XDismissButton.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 3/2/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            
            Button(){
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 44, height: 44)
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
            }
            
        }
        .padding()    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
