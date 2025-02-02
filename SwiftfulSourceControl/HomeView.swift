//
//  HomeView.swift
//  SwiftfulSourceControl
//
//  Created by Tanmay . on 18/10/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0
    @State private var isLiked: Bool = false
    @State private var showShareConfirmationDialogue: Bool = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeTab(isLiked: $isLiked, showShareConfirmationDialogue: $showShareConfirmationDialogue)
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
    @Binding var isLiked: Bool
    @Binding var showShareConfirmationDialogue: Bool 
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
                ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<20) { item in
                                NavigationLink{
                                    Text("You tapped on \(item)'s story")
                                } label: {
                                    Circle()
                                       .frame(width: 100, height: 100)
                                       .foregroundStyle(.black)
                                       .overlay {
                                           Circle()
                                               .fill(.white)
                                               .frame(width: 95, height: 95)
                                               .overlay {
                                                   Text("\(item)")
                                                       .font(.headline)
                                                       .foregroundStyle(.black)
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
                                .foregroundStyle(.black)
                                .frame(width: 40, height: 40)
                                .padding(.horizontal, 4)
                            Text("tanmayxx_")
                                .font(.headline)
                                .foregroundStyle(.black)
                        }
                        Spacer()
                        
                        Menu{
                            Button{} label: {
                                Text("Share")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Image(systemName: "paperplane")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(.black)
                                .font(.headline)
                                .padding(.trailing, 5)
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
                    .padding(.horizontal, 4)
                
                HStack(spacing: 10){
                    
                    // Heart Button:
                    Button{
                        // execute action for when the button is tapped:
                        isLiked.toggle()
                    } label: {
                        Image(systemName: "heart.fill")
                            .font(.title2)
                            .foregroundStyle(isLiked ? .red : .white)
                            .overlay{
                                Image(systemName: "heart")
                                    .font(.title2)
                                    .foregroundStyle(isLiked ? .red : .black)
                            }
                    }
                    .padding(.leading, 4)
                    
                    // Comment Button:
                    Button {
                        // execute action for when the comment button is tapped:
                    } label: {
                        Image(systemName: "message")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                    
                    // Share button:
                    Button{
                        // execute action for when the share button is tapped:
                        showShareConfirmationDialogue.toggle()
                    } label: {
                        Image(systemName: "paperplane")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                    .confirmationDialog("Share",
                                        isPresented: $showShareConfirmationDialogue) {
                        Button("Share with @disha.bisht"){}
                        Button("Share with @tanmayxx"){}
                    }
                    Spacer()
                }
                
                HStack{
                    Text("tanmayxx")
                        .font(.headline.bold())
                    Spacer()
                }
                .padding(.leading, 4)

            }
            
            Spacer()
                .navigationTitle("HomeTab")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink{
                            Text("See follow requests and notifications here.")
                        } label: {
                            Image(systemName: "heart.fill")
                                .foregroundStyle(.red)
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink{
                            Text("Your Direct Messages appear here.")
                        } label: {
                            Image(systemName: "message.fill")
                                .foregroundStyle(.black)
                        }
                    }
                    
                }
        }
    }
}
