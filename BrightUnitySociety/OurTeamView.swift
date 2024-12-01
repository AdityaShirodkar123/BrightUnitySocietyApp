//
//  OurTeamView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/3/23.
//

import SwiftUI

struct OurTeamView: View {
    
    @ViewBuilder
    private var header: some View {
        Text("About Us")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
    
    @ViewBuilder
    private var image: some View {
        VStack {
            Image("AboutUs").resizable().aspectRatio(contentMode: .fill).padding(.top, 15).padding(.bottom, 10)
            Text("Sohum (Left) and Kanaad (Right)").padding(.bottom, 100)
            
            Text("We (Sohum, Kanaad, Aditya, and Sairam) are four high schoolers in John P. Stevens High School, looking to bring joy and laughter for children all across the world. We have decided to dedicate our time and effort to produce a fun and interactive social club, and it would mean the world to us if you would register for the group. ").font(.title)
                .multilineTextAlignment(.center).padding(.bottom, 70)
        }
    }
    
    var body: some View {
        ScrollView {
            header.navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width, height: 300).background(Color.black)
            image.navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width-32)
            ClosureView().navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true).frame(width: UIScreen.main.bounds.size.width).background(Color(UIColor.systemGray6))
        }.edgesIgnoringSafeArea(.top)
    }
}

struct OurTeamView_Previews: PreviewProvider {
    static var previews: some View {
        OurTeamView()
    }
}
