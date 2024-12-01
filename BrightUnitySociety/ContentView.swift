//
//  ContentView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            HomeView().navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            NewsView().navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            OurTeamView().navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Label("Team", systemImage: "person")
                }
            ImportedLoginView().navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Label("Bus Drivers", systemImage: "person.badge.plus")
                }
            ProgramFinderView().navigationViewStyle(StackNavigationViewStyle())
                .tabItem {
                    Label("Programs", systemImage: "magnifyingglass")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
