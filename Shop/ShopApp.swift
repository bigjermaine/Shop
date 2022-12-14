//
//  ShopApp.swift
//  Shop
//
//  Created by Apple on 14/12/2022.
//

import SwiftUI

@main
struct ShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView() .environmentObject(CartManager())
        }
    }
}
