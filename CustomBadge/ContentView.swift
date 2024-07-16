//
// File: ContentView.swift
// Project: CustomBadge
// 
// Created by SCOTT CROWDER on 7/16/24.
// 
// Copyright © Playful Logic Studios, LLC 2024. All rights reserved.
// 


import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            VStack{
                Image(systemName: "house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                Text("House")
                    .font(.caption)
            }
            .foregroundStyle(.blue)
            .customBadge(7)
            
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                
                VStack(alignment: .leading) {
                    Text("Your Name")
                        .bold()
                    Text("Your important title")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .customBadge(42)
            
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                Text("Profile")
            }
            .customBadgeGreenRect(100)
            
            VStack {
                Image(systemName: "car.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                Text("Automotive")
            }
            .customBadgePurpleDiamond(2)
            
            VStack {
                Image(systemName: "bird.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                Text("Bird Sightings")
            }
            .customBadgeStar(200, maxCountAmount: 9)
        }
    }
}

#Preview {
    ContentView()
}
