//
//  Item.swift
//  IcarusAtlas
//
//  Created by Michael Rippe on 3/31/22.
//

import Foundation

struct Item: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let recipe: [Item: Int]?
}

extension Item {
    init(name: String) {
        self = .init(name: name, recipe: nil)
    }
}

extension Item {
    public static let all: [Item] = [ .fiber, .wood, .stone, .leather, .craftingBench ]

    public static var allItems: [Item] {
        let mirror = Mirror(reflecting: self)
        return mirror.children.compactMap { Item(name: "\($0)") }
    }

    public static let fiber = Item(name: "Fiber")
    public static let wood = Item(name: "Wood")
    public static let stone = Item(name: "Stone")
    public static let leather = Item(name: "Leather")
    public static let bone = Item(name: "Bone")
    public static let oxite = Item(name: "Oxite Ore")
    public static let ironOre = Item(name: "Iron Ore")
    public static let goldOre = Item(name: "Gold Ore")
    public static let copperOre = Item(name: "Copper Ore")
    public static let platinumOre = Item(name: "Platinum Ore")
    public static let titaniumOre = Item(name: "Titanium Ore")

    public static let craftingBench = Item(
        name: "Crafting Bench",
        recipe: [
            .fiber: 60,
            .wood: 50,
            .stone: 12,
            .leather: 20
        ]
    )
}
