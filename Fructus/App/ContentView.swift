//
//  ContentView.swift
//  Fructus
//
//  Created by Roman Shimin on 10/1/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitData
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 10)
                }
            }
            .navigationTitle("Fruits")
        }//: Navigation
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
