//
//  MainTabView.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/21/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem{Label("Explore",systemImage:"globe") }
            WishlistView()
                .tabItem{Label("Wishlists",systemImage:"heart")}
            ProfileView()
                .tabItem{Label("profile",systemImage:"person") }
        }
    }
}

#Preview {
    MainTabView()
}
