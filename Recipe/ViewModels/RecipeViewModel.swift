//
//  RecipeViewModel.swift
//  Recipe
//
//  Created by Mukti Wibowo on 23/12/21.
//

import Foundation
class RecipeViewModel: ObservableObject{
    @Published var recipes = [RecipeModel]()
    
    init(){
        self.recipes = RecipeService.getDataFromJson()
    }
}
