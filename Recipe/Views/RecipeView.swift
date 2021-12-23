//
//  ContentView.swift
//  Recipe
//
//  Created by Mukti Wibowo on 22/12/21.
//

import SwiftUI

struct RecipeView: View {
    @ObservedObject var data = RecipeViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Recipes").bold().font(.system(size: 24))
            ScrollView{
                LazyVStack(alignment: .leading){
                
                    ForEach(data.recipes){ recipe in
                        HStack{
                            Image(recipe.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center).clipped().cornerRadius(5)
                            Text(recipe.name)
                        }
                    }
                }
            }
        }
        .padding([.horizontal, .vertical])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
