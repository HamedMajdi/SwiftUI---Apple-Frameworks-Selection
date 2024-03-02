//
//  DetailsView.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 3/1/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    
    ///binding makes the isShowingDetailView be equal to whatever is is in the parent view
    ///
    @Binding var isShowingDetailView: Bool
    @State private var isSafariViewShowing = false
    
    var body: some View {
        
        VStack(){
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isSafariViewShowing = true
                
            }label: {
                AFButtons(title: "Learn More")
                
            }
            
        }
        .fullScreenCover(isPresented: $isSafariViewShowing, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
}
