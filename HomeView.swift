//
//  HomeView.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 18/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("This is the first text")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.red)
                .cornerRadius(10)
            
            Text("This is the second text")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    HomeView()
}
 
