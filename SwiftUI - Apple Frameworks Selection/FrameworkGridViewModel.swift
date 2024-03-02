//
//  FrameworkGridViewModel.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 3/1/24.
//

import SwiftUI

// Since we don't want to subclass our current class, we can make it final

final class FrameworkGridViewModel: ObservableObject{

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var selectedFramework: Framework? {
        /// Anytime the selectedFramework changes, we are going to make isShowingDetailView True
        /// So when the selectedFramework change by tapping on the grid, we are going to make isShowingDetailView True
        didSet{
            isShowingDetailView = true
        }
    }
    
    /// The property below needs to be published, because we want our grid view to be  listening for when isShowingDetailView changes
    /// so when isShowingDetailView changes to True, that's when we will show our DetailView
    /// So in order to be able to hear it, we need to make it publish itself. Therefore, we use @Published
    @Published var isShowingDetailView = false
}
