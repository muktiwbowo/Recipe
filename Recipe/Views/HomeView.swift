//
//  HomeView.swift
//  Recipe
//
//  Created by Mukti Wibowo on 25/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            FeaturedView().tabItem{
                Label("Featured", systemImage: "star.fill")
            }
            RecipeView().tabItem{
                Label("List", systemImage: "list.dash")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
