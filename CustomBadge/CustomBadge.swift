//
// File: CustomBadge.swift
// Project: CustomBadge
// 
// Created by SCOTT CROWDER on 7/16/24.
// 
// Copyright © Playful Logic Studios, LLC 2024. All rights reserved.
// 


import SwiftUI

struct CustomBadge: ViewModifier {
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
                .background(.red)
                .frame(height: count > 9 ? 17 : 19)
                .clipShape(Capsule())
            }
        } else {
            content
        }
    }
}

extension View {
    func customBadge(_ count: Int = 0, maxCountAmount: Int = 99) -> some View {
        modifier(CustomBadge(count: count, maxCountAmount: maxCountAmount))
    }
}
