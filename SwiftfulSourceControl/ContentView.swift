//
//  ContentView.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 18/10/24.
//

// Clone: Copying the repo locally
// Commit: Save ("Checkpoint") on our current branch
// Staging: Prepare changes for a commit
// Stash: Save changes for later
// Push: Send local commits to remote repo
// Pull: Fetch remote commits to local repo

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
            Text("~Nick")
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
                .padding(.bottom)
            
            Button{
                withAnimation(.spring()){
                    fillForRectangle.toggle()
                }
            } label: {
                Rectangle()
                    .fill(fillForRectangle ? .red : .blue)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
            }
            .shadow(radius: 10, y: 10)
           
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
