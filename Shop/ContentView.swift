//
//  ContentView.swift
//  Shop
//
//  Created by Apple on 14/12/2022.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    @StateObject var cartManager = CartManager()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                        .environmentObject(cartManager)
                }
        }
        .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
               
                    NavigationLink {
                        CartView()
                            .environmentObject(cartManager)
                    } label: {
                        _CartButton(numberOfProducts: cartManager.products.count)
                            
                    }
                
            }
            .navigationViewStyle(StackNavigationViewStyle()) // Add this line
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
