//
//  ContentView.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 18/10/24.
//

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
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
