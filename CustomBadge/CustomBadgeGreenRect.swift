//
// File: CustomBadgeGreenRect.swift
// Project: CustomBadge
// 
// Created by SCOTT CROWDER on 7/16/24.
// 
// Copyright © Playful Logic Studios, LLC 2024. All rights reserved.
// 


import SwiftUI

struct CustomBadgeGreenRect: ViewModifier {
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
                .padding(.horizontal, 5)
                .padding(.vertical, count > 9 ? 7 : 5)
                .background(
                    RoundedRectangle(cornerRadius: 10).fill(.green)
                )
            }
        } else {
            content
        }
    }
}

extension View {
    func customBadgeGreenRect(_ count: Int = 0, maxCountAmount: Int = 99) -> some View {
        modifier(CustomBadgeGreenRect(count: count, maxCountAmount: maxCountAmount))
    }
}
