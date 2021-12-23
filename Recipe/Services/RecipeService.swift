//
//  RecipeService.swift
//  Recipe
//
//  Created by Mukti Wibowo on 23/12/21.
//

import Foundation
class RecipeService{
    static func getDataFromJson() -> [RecipeModel]{
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else{
            return [RecipeModel]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                let recipe = try decoder.decode([RecipeModel].self, from: data)
                for r in recipe{
                    r.id = UUID()
                }
                return recipe
            }catch{
                print(error)
            }
        }catch {
         print(error)
        }
        
        return [RecipeModel]()
    }
}
