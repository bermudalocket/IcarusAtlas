//
//  Recipe.swift
//  IcarusAtlas
//
//  Created by Michael Rippe on 4/3/22.
//

import Foundation

typealias Recipe = [Item: Int]

extension Recipe {

    public func formatted() -> String {
        self.map { "\($0.1)x \($0.0.name)" }.joined(separator: ", ")
    }

}
