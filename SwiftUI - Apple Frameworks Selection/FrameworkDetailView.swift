//
//  DetailsView.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 3/1/24.
//

import SwiftUI

struct DetailsView: View {
    
    let framework: Framework
    var body: some View {

        VStack(){
            
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
            
            Spacer()
            
            Button(action: {
                
            },
                   label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 280, height: 60)
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            })
            
            Spacer()
        }
    }
}

#Preview {
    DetailsView(framework: MockData.sampleFramework)
}
