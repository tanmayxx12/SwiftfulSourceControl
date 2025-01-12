//
//  GitPractice.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 12/01/25.
//

import SwiftUI

struct GitPractice: View {
    @State private var textFieldText: String = ""
    @State private var names: [String] = []
    
    var body: some View {
        VStack {
            TextField("Your name...", text: $textFieldText)
                .padding(.leading)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(.black.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal, 8)
                .autocorrectionDisabled()
            
            HStack {
                Button("Save"){
                    save()
                }
                
                Button("Clear") {
                    clear()
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.secondary)
            .font(.headline)
            
            List {
                ForEach(names, id: \.self) { name in
                    withAnimation(.easeInOut) {
                        Text(name)
                    }
                }
            }
            .listStyle(.plain)
            
            
        }
        .padding(5)
    }
    
    // Function to save name in the array:
    func save() {
        let name = textFieldText
        names.append(name)
        textFieldText = ""
    }
    
    // Function to clear the list:
    func clear() {
        names.removeAll()
        textFieldText = ""
    }
    
}

#Preview {
    GitPractice()
}
