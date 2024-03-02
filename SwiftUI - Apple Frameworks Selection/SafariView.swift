//
//  SafariView.swift
//  SwiftUI - Apple Frameworks Selection
//
//  Created by Hamed Majdi on 3/2/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    

    let url: URL

    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
    
}
