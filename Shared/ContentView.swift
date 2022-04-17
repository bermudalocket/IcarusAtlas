//
//  ContentView.swift
//  Shared
//
//  Created by Michael Rippe on 3/31/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            List(Item.all) { item in
                VStack(alignment: .leading) {
                    ItemRowView(item: item)
                }
            }
            .navigationTitle("All Items")
        }
    }
}

struct ItemRowView: View {

    let item: Item

    var body: some View {
        Text(item.name)
        if let recipe = item.recipe {
            Text(recipe.formatted())
                .font(.subheadline)
                .foregroundColor(.gray)
                .lineLimit(1)
                .truncationMode(.tail)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
