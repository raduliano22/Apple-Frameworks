//
//  FrameworkTitleView.swift
//  Apple Frameworks
//
//  Created by Octav Radulian on 25.04.2022.
//

import SwiftUI

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

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
