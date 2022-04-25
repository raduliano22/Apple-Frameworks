//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Octav Radulian on 24.04.2022.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
}
