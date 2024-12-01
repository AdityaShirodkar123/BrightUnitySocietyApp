//
//  NewsView.swift
//  BrightUnitySociety
//
//  Created by Aditya Shirodkar on 4/3/23.
//

import SwiftUI

struct NewsView: View {
    
    @ViewBuilder
    private var header: some View {
        Text("Latest News")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
    
    /*@ViewBuilder
    private var closure: some View {
        
        VStack(alignment: .leading) {
            Text("For Questions and Donations, feel free to contact us at:")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true).padding(.bottom, 20)
            
            Text("Email: support@brightunitysociety.org")
                .font(.title2).multilineTextAlignment(.center).padding(.bottom, 10)
            
            Text("Phone: (848) 215 - 3723")
                .font(.title2).multilineTextAlignment(.center).padding(.bottom, 50)
        }
    }*/
    
    @ViewBuilder
    private var image: some View {
        VStack(alignment: .center) {
            
            Text("BUS Mobile App!")
                .font(.largeTitle)
                .fontWeight(.bold).padding(.top, 70).padding(.bottom, 20)
            Text("Get excited! Bright Unity Society's new mobile app launching on 4/7/23 will make signing up for sessions easier than ever. With just a few taps, you can find nearby sessions and register for a session of fun-filled enrichment activities.")
                .font(.title).multilineTextAlignment(.center).padding(.bottom, 70)
            
            Image("NewsBUS").resizable().aspectRatio(contentMode: .fill).padding(.top, 15).padding(.bottom, 10)
            
            Text("First Session in Saudi Arabia!")
                .font(.largeTitle)
                .fontWeight(.bold).padding(.top, 70).padding(.bottom, 20)
            Text("We are proud to congratulate our international volunteers for hosting our first session in Dubai. After weeks of training and onboarding, they hosted a virtual session on the recent FIFA World Cup attended by 6 students where they discussed the worker's conditions while building the stadiums in Qatar. Sign up today under the \"Registration\" tab!")
                .font(.title).multilineTextAlignment(.center).padding(.bottom, 70)
            
            Image("SAMeetingBanner").resizable().aspectRatio(contentMode: .fill).padding(.top, 15).padding(.bottom, 10)
            
            Text("$12,500 Raised!")
                .font(.largeTitle)
                .fontWeight(.bold).padding(.top, 70).padding(.bottom, 20)
            
            Text("We would like to thank all of you for your continued support in helping us raise over $12,500! Thanks to all of your support we are able to keep doing what we are doing, while making a positive impact on the special needs community.")
                .font(.title).multilineTextAlignment(.center).padding(.bottom, 70)
            
            Image("InclusiveCreations").resizable().aspectRatio(contentMode: .fill).padding(.top, 15).padding(.bottom, 10)
            
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
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
