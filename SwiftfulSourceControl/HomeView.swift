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
            HomeTab()
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
        .tint(.red)
        
        
    }
}

#Preview {
    HomeView()
//    HomeTab()
}
 
struct HomeTab: View {
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<20) { item in
                                NavigationLink{
                                    Text("You tapped on \(item)'s story")
                                } label: {
                                    Circle()
                                       .frame(width: 100, height: 100)
                                       .overlay {
                                           Circle()
                                               .fill(.white)
                                               .frame(width: 95, height: 95)
                                               .overlay {
                                                   Text("\(item)")
                                                       .font(.headline)
                                               }
                                       }
                                }
                                 
                            }
                        }
                        .padding(.leading)
                    }
                VStack{
                    HStack{
                        NavigationLink{
                            Text("tanmayxx's Profile")
                        } label: {
                            Circle()
                                .frame(width: 40, height: 40)
                                .padding(.leading)
                            Text("tanmayxx_")
                                .font(.headline)
                        }
                       
                        Spacer()
                        Menu {
                            Button{} label: {
                                Text("Share")
                                    .fontWeight(.bold)
                                Image(systemName: "paperplane")
                            }
                        } label: {
                            Image(systemName: "ellipsis")
                                .font(.headline)
                                .padding(.trailing)

                        }
                    }
                }
               
                Rectangle()
                    .fill(.gray)
                    .frame(width: .infinity, height: 400)
                    .padding(.horizontal, 8)
                    .overlay{
                        Image("TanmaysPost")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 400)
                            .clipped()
                    }
                    .padding(.horizontal, 4 )
            }
            
            Spacer()
                .navigationTitle("HomeTab")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink{
                            Text("See follow requests and notifications here.")
                        } label: {
                            Image(systemName: "heart.fill")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink{
                            Text("Your Direct Messages appear here.")
                        } label: {
                            Image(systemName: "message.fill")
                        }
                    }
                    
                }
        }
        .tint(.black)
    }
}
