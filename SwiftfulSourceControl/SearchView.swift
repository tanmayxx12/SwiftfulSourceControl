//
//  SearchView.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 21/10/24.
//

import SwiftUI

struct SearchView: View {
    @State private var textFieldText: String = ""
    let columns = [
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    TextField("Search...", text: $textFieldText)
                        .font(.headline)
                        .padding()
                        .frame(height: 55)
                        .background(.black.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal, 4)
                    
                }
                LazyVGrid(columns: columns) {
                    ForEach(0..<20){ pic in
                        Button{} label: {
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 150)
                                .cornerRadius(7)
                        }
                       
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
