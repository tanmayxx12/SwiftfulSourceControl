//
//  HomeView.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 18/10/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home Tab")
                .tabItem {
                    VStack{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
                .tag(0)
            
            Text("Search Tab")
                .tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .tag(1)
            
            Text("Post Something Tab")
                .tabItem{
                    VStack{
                        Image(systemName: "plus.app")
                        Text("Post")
                    }
                }
                .tag(2)
            
            Text("Explore Tab")
                .tabItem {
                    VStack{
                        Image(systemName: "play.square.stack.fill")
                        Text("Explore")
                    }
                }
            
            
            Text("Profile Tab")
                .tabItem {
                    VStack{
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                }
                .tag(4)
        }
        
        
        
    }
}

#Preview {
    HomeView()
}
 
