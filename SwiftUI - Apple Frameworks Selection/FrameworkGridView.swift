//
//  ContentView.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 2/29/24.
//

import SwiftUI  

struct ContentView: View {
    
    /// When we are insntaciating new viewModel object, we use @StateObject
    /// But when we are injecting it (like from previous view), we use @ObservedObject
    @StateObject var viewModel = FrameworkGridViewModel()
    

    var body: some View {
        
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.id){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        
                    }
                }
            }
            
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}


