//
//  ContentView.swift
//  Apple Frameworks
//
//  Created by Octav Radulian on 24.04.2022.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                    
                }.navigationTitle("🍎 Frameworks")
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
            //in order to make a text fit we use the following modifiers
            //this is used for the situation when the text is longer than the view
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
    
    
}
