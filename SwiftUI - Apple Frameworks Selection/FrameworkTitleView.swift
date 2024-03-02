//
//  FrameworkTitleView.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 3/2/24.
//

import SwiftUI

struct FrameworkTitleView: View{
    
    var framework: Framework

    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider{
    static var previews: some View{
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
