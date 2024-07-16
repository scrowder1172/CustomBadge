//
// File: CustomBadgePurpleDiamond.swift
// Project: CustomBadge
// 
// Created by SCOTT CROWDER on 7/16/24.
// 
// Copyright © Playful Logic Studios, LLC 2024. All rights reserved.
// 


import SwiftUI

struct CustomBadgePurpleDiamond: ViewModifier {
    let count: Int
    let maxCountAmount: Int
    
    func body(content: Content) -> some View {
        if count > 0 {
            ZStack(alignment: .topTrailing) {
                content
                HStack(spacing: 0) {
                    Text(min(count, maxCountAmount), format: .number)
                    
                    if count > maxCountAmount {
                        Text("+")
                    }
                }
                .font(.system(size: 14))
                .foregroundStyle(.white)
                .padding(5)
                .background(
                    Rectangle().fill(.purple).rotationEffect(Angle(degrees: 45))
                )
            }
        } else {
            content
        }
    }
}

extension View {
    func customBadgePurpleDiamond(_ count: Int = 0, maxCountAmount: Int = 99) -> some View {
        modifier(CustomBadgePurpleDiamond(count: count, maxCountAmount: maxCountAmount))
    }
}
