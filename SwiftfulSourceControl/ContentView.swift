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
 
 BUG IN PRODUCTION:
 [Patch] Description of the patch
 
 BUG NOT IN PRODUCTION:
 [Bug] Description of the bug
 
 MUNDANE TASKS:
 [Clean] Description of the changes
 
 RELEASE:
 [Release] Description of release
 */

import SwiftUI

struct ContentView: View {
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
