//
//  Item.swift
//  IcarusAtlas
//
//  Created by Michael Rippe on 3/31/22.
//

import Foundation

struct Item: Hashable, Identifiable {

    /// Conformance to `Identifiable` is required to display this type in a SwiftUI `List`.
    var id = UUID()

    let name: String
    let recipe: [Item: Int]?
}

extension Item {
    /// Convenience init for recipe-less items like fiber, wood
    /// - Parameter name: Display name
    init(name: String) {
        self = .init(name: name, recipe: nil)
    }
}

extension Item {
    public static let all: [Item] = [ .fiber, .wood, .stone, .leather, .craftingBench ]
        
    
    // public static let = Item(name: "")
    
    // Using icarus.fandom.com/wiki to help find/research these --Woz 4-20-22
    
    
    // Harvested by hand, Sickle or Axe
    
    public static let fiber = Item(name: "Fiber")
    public static let wood = Item(name: "Wood")
    
    // Mined with a Pickaxe
    
    public static let stone = Item(name: "Stone")
    public static let oxite = Item(name: "Oxite Ore")
    public static let sulfur = Item(name: "Sulfur Ore")
    public static let silicaOre = Item(name: "Silica Ore")
    public static let coalOre = Item(name: "Coal Ore")
    public static let ironOre = Item(name: "Iron Ore")
    public static let aluminiumOre = Item(name: "Aluminium Ore")
    public static let goldOre = Item(name: "Gold Ore")
    public static let copperOre = Item(name: "Copper Ore")
    public static let platinumOre = Item(name: "Platinum Ore")
    public static let titaniumOre = Item(name: "Titanium Ore")
    
    // Smelted

    public static let ironIngot = Item(name: "Iron Ingot")
    public static let copperIngot = Item(name: "Copper Ingot")
    public static let aluminiumIngot = Item(name: "Aluminium Ingot")
    public static let goldIngot = Item(name: "Gold Ingot")
    public static let platinumIngot = Item(name: "Platinum Ingot")
    public static let titaniumIngot = Item(name: "Titanium Ingot")
    
    // From Skinning or killing of monsters/creatures
    
    public static let leather = Item(name: "Leather")
    public static let bone = Item(name: "Bone")
    public static let fur = Item(name: "Fur")
    public static let wormScale = Item(name: "Worm Scale")
    public static let scorpionTail = Item(name: "Scorpion Tail")
    public static let scorpionPincer = Item(name: "Scorpion Pincer")
    
    
    // Crafted Benches

    public static let craftingBench = Self(
        name: "Crafting Bench",
        recipe: [
            .fiber: 60,
            .wood: 50,
            .stone: 12,
            .leather: 20
        ]
    )
}
