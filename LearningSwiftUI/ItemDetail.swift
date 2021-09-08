//
//  ItemDetail.swift
//  LearningSwiftUI
//
//  Created by Elavarasan on 08/09/21.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order : Order
    
    var body: some View {
        VStack {
            ZStack(alignment:.bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Spacer()
            Button("Order This") {
                order.add(item: item)
            }.font(.headline)
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)

        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(Order())
        }
        
    }
}
