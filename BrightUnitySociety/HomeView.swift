//
//  HomeView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/3/23.
//

import SwiftUI

struct HomeView: View {
    
    @ViewBuilder
    private var bright: some View {
        ZStack() {
            Image("sunsetLightBulb").resizable().aspectRatio(contentMode: .fill).frame(height: 500)
        }.navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
    
    @ViewBuilder
    private var Mission: some View {
        VStack(alignment: .trailing) {
            
            Text("Mission")
                .font(.largeTitle)
                .fontWeight(.bold).padding(.top, 70).padding(.bottom, 20)
            Text("We aim to provide a platform for social gathering for special needs children and inspiring space to promote full participation in society")
                .font(.title).multilineTextAlignment(.trailing).padding(.bottom, 70)
        }
    }
    
    @ViewBuilder
    private var Why: some View {
        VStack(alignment: .leading) {
            Text("Why Socializing and Friendship?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 70).padding(.bottom, 20)
            Text("Studies conducted by WebMD and Mayo Clinic have concluding that socializing and friendship...")
                .font(.title).foregroundColor(Color.white).multilineTextAlignment(.leading)
            VStack(alignment: .leading) {
                Text("- Improves self-esteem and self-worth")
                    .multilineTextAlignment(.leading).foregroundColor(Color.white)
                Text("- Boosts happiness")
                    .multilineTextAlignment(.leading).foregroundColor(Color.white)
                Text("- Helps you cope with the troubles of daily life")
                    .multilineTextAlignment(.leading).foregroundColor(Color.white)
                Text("- Encourages a healthy, outgoing lifestyle")
                    .multilineTextAlignment(.leading).foregroundColor(Color.white)
            }.frame(width: UIScreen.main.bounds.size.width-40).padding(.bottom, 70)
        }.frame(width: UIScreen.main.bounds.size.width-32)
    }
    
    var body: some View {
        ScrollView {
            bright.navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true).edgesIgnoringSafeArea(.all)
            Mission.navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width-32)
            Why.navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width).background(Color.black)
            ClosureView().navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width).background(Color(UIColor.systemGray6))
            
        }.navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
