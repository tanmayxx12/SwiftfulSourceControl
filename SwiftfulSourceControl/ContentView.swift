//
//  ContentView.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 18/10/24.
//


// COMMIT MESSAGES:
/*
 NEW FEATURE:
 [Feature] Description of the feature
 
 BUG NOT IN PRODUCTION:
 [Bug] Description of the bug
 
 RELEASE:
 [Release] Description of release
 
 BUG IN PRODUCTION:
 [Patch] Description of the patch
 
 MUNDANE TASKS:
 [Clean] Description of the changes
 
 */

import SwiftUI

struct ContentView: View {
    @State private var fillForRectangle: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Swiftful Thinking")
                .padding(.bottom)
            
            Button("Click Me") {}
                .font(.headline)
                .buttonStyle(.borderedProminent)
                .shadow(radius: 10, y: 10)
            
            Button("Subscribe") {}
                .font(.headline)
                .buttonStyle(.borderedProminent)
                .shadow(radius: 10, y: 10)
                .tint(.gray)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
