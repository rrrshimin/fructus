//
//  FruitRowView.swift
//  Fructus
//
//  Created by Roman Shimin on 10/3/21.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 10){
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }//: VStack
        }//: HStack
    }
}

// MARK: - Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
