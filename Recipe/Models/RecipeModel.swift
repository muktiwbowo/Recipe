//
//  ModelRecipe.swift
//  Recipe
//
//  Created by Mukti Wibowo on 23/12/21.
//

import Foundation

class RecipeModel: Identifiable, Decodable{
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
}
